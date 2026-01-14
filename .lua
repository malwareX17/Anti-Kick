local player = game:GetService("Players").LocalPlayer
local old
 
old = hookmetamethod(game,"__namecall",function(self,...)
local method = getnamecallmethod()
if method == "Kick" or method == "kick" then
return warn'blocked the kick'
end
return old(self,...)
end)

local function Notify(title, text, duration)
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title or "Notification",
            Text = text or "No Message",
            Duration = duration or 5
        })
    end)
end

Notify("loaded", "yessir")
