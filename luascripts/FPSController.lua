
--
--* @project: KZX Engine
--* @author: Grand Dog Studio
--

local FPSController =
{
    walkSpeed           = 3,
    runSpeed            = 6,
    mouseSensitivity    = 0.05,
    mouseLook           = Vector2.new(180, 0),
    previousMouse       = Vector2.new(0, 0),
    firstMouse          = true,
    body                = nil,
    mouseLocked         = true,
    isGrounded          = false,
    defaultRotation     = nil
}

function FPSController:OnAwake()
    self.body = self.owner:GetParent()
    self.defaultRotation = self.body:GetTransform():GetRotation()
end

function FPSController:OnStart()
    if self.mouseLocked then
        Inputs.LockMouse()
    end
	
	
	
end



function FPSController:OnUpdate(deltaTime)
    -- Toggle mouse lock with Left ALT key
    if Inputs.GetKeyDown(Key.LEFT_ALT) then
        self.mouseLocked = not self.mouseLocked
        self.firstMouse = true
        if self.mouseLocked then
            Inputs.LockMouse()
			Debug.Log(tostring("You are alive"))
        else
		    
			Debug.Log(tostring("You are dead"))

        end
	
       
		
    end

    -- Handle mouse and keyboard only if mouse is locked
    if self.mouseLocked then
        self:HandleMovement(deltaTime)
        self:HandleRotation(deltaTime)
    end
    self:CheckGround()

end

function FPSController:HandleMovement(deltaTime)
    velocity = Vector3.new(0, 0, 0)

    forward = self.body:GetTransform():GetForward()
    right   = self.body:GetTransform():GetRight()

    if Inputs.GetKey(Key.LEFT_SHIFT) then speed = self.runSpeed else speed = self.walkSpeed end
    if Inputs.GetKey(Key.A) then velocity = velocity + right end
    if Inputs.GetKey(Key.D) then velocity = velocity - right end
    if Inputs.GetKey(Key.W) then velocity = velocity + forward end
    if Inputs.GetKey(Key.S) then velocity = velocity - forward end

    if Inputs.GetKeyDown(Key.SPACE) and self.isGrounded then
        physicalCapsule = self.body:GetPhysicalCapsule()
        physicalCapsule:AddImpulse(Vector3.new(0, 4, 0))
    end

    if Inputs.GetKey(Key.F) then
            Scenes.GetCurrentScene():FindActorByName("Flash"):SetActive(true) 
						Debug.Log(tostring("Light On"))

			else 
            
            Scenes.GetCurrentScene():FindActorByName("Flash"):SetActive(false) 
						Debug.Log(tostring("Light Off"))

  end

    velocity = velocity * speed

    previousPosition    = self.body:GetTransform():GetPosition()
    newPosition         = previousPosition + velocity

    --self.body:GetTransform():SetPosition(newPosition)
    velocity.y =  self.body:GetPhysicalCapsule():GetLinearVelocity().y
    self.body:GetPhysicalCapsule():SetLinearVelocity(velocity)
end

function FPSController:HandleRotation(deltaTime)
    mousePosition = Inputs.GetMousePos()
    
    if self.firstMouse == true then
        self.previousMouse = mousePosition
        self.firstMouse = false
    end
    
    mouseOffset = Vector2.new(0, 0)
    mouseOffset.x = mousePosition.x - self.previousMouse.x
    mouseOffset.y = self.previousMouse.y - mousePosition.y

    self.previousMouse = mousePosition

    mouseOffset = mouseOffset * self.mouseSensitivity

    if Inputs.GetKey(Key.G) then
        Debug.Log(tostring(mousePosition.y))
    end

    self.mouseLook = self.mouseLook + mouseOffset;

    -- Clamp x and y
    if self.mouseLook.y > 89    then self.mouseLook.y = 89  end
    if self.mouseLook.y < -89   then self.mouseLook.y = -89 end

    self.owner:GetTransform():SetRotation(Quaternion.new(Vector3.new(-self.mouseLook.y, 0, 0)))
    self.body:GetTransform():SetRotation(self.defaultRotation * Quaternion.new(Vector3.new(0, 180 - self.mouseLook.x, 0)))
end

function FPSController:CheckGround()

    Hit = Physics.Raycast(self.body:GetTransform():GetPosition() - Vector3.new(0, 0.75, 0), Vector3.new(0, -1, 0), 0.75)
    
    if Hit ~= nil then
        self.isGrounded = true
    else
        self.isGrounded = false
    end
end

return FPSController