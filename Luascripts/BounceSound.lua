local BounceSound =
{
}

function BounceSound:OnCollisionStart(other)
    self.owner:GetAudioSource():Play()
end

return BounceSound
