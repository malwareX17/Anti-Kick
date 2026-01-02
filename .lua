local player = game:GetService("Players").LocalPlayer
local old
 
old = hookmetamethod(game,"__namecall",function(self,...)
local method = getnamecallmethod()
if method == "Kick" or method == "kick" then
return warn'blocked the kick'
end
return old(self,...)
end)
