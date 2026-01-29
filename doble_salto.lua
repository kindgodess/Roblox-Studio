local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local character
local humanoid
 
local canDoubleJump = false
local hasDoubleJumped = false
local oldPower
local time_delay = 0.2
local jump_multiplier = 1 
 
function onJumpRequest()
 if not character or not humanoid or not character:IsDescendantOf(workspace) or humanoid:GetState() == Enum.HumanoidStateType.Dead then
  return
 end
 
 if canDoubleJump and not hasDoubleJumped then
  hasDoubleJumped = true
  humanoid.JumpPower = oldPower * jump_multiplier
  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
 end
end
 
local function characterAdded(new)
 character = new
 humanoid = new:WaitForChild("Humanoid")
 hasDoubleJumped = false
 canDoubleJump = false
 oldPower = humanoid.JumpPower
 
 humanoid.StateChanged:connect(function(old, new)
  if new == Enum.HumanoidStateType.Landed then
   canDoubleJump = false
   hasDoubleJumped = false
   humanoid.JumpPower = oldPower
  elseif new == Enum.HumanoidStateType.Freefall then
   wait(time_delay)
   canDoubleJump = true
  end
 end)
end
 
if player.Character then
 characterAdded(player.Character) 
end
 
player.CharacterAdded:connect(characterAdded)
UIS.JumpRequest:connect(onJumpRequest)
