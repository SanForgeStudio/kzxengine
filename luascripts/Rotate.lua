--
--* @project: KZX Engine
--* @author: Grand Dog Studio
--

local Rotate =
{
    eulerAngles = Vector3.new(0, 0, 0)
}

function Rotate:OnUpdate(deltaTime)
    self.eulerAngles.y = self.eulerAngles.y + 30 * deltaTime
    self.owner:GetTransform():SetRotation(Quaternion.new(self.eulerAngles))

     Debug.Log(tostring(self.eulerAngles.y))

end

function Rotate:OnAwake()
    self.eulerAngles = self.owner:GetTransform():GetRotation():EulerAngles()
end

return Rotate
