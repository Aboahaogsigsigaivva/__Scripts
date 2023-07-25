-- variables
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character
local hum = chr.Humanoid
local hrp = chr.HumanoidRootPart





-- farming options
if getgenv().Heaven_Stands["Farming Options"]["Box Farm"] then
    for _, v in pairs(workspace.Item_Spawnner.Box:GetChildren()) do
      if v:IsA("MeshPart") then
        for _, v in pairs(v:GetChildren()) do
          if v.Base then
            hrp.CFrame = v.Base.CFrame wait(.25)
            fireclickdetector(v.Base.ClickDetector);
          end
        end
      end
    end
end





-- insta kill bosses
if getgenv().Heaven_Stands["Insta Kill Bosses"]["DIO"] then
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=5153734236" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    hi:Play() wait(.30)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "DIO"
    task.spawn(function () repeat task.wait() Enemies = workspace.Enemies:GetChildren() for i = 1, #Enemies do local v = Enemies[i] if v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid").Health > 0 then game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position) end end until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies.DIO.Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Garou"] then
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=5153734236" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    hi:Play() wait(.30)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "Garou"
    task.spawn(function () repeat task.wait() Enemies = workspace.Enemies:GetChildren() for i = 1, #Enemies do local v = Enemies[i] if v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid").Health > 0 then game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position) end end until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies.Garou.Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Vergil"] then
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=5153734236" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    hi:Play() wait(.30)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "Vergil"
    task.spawn(function () repeat task.wait() Enemies = workspace.Enemies:GetChildren() for i = 1, #Enemies do local v = Enemies[i] if v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid").Health > 0 then game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position) end end until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies.Vergil.Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Silver Chariot Requiem"] then
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=5153734236" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    hi:Play() wait(.30)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    workspace.Enemies["Silver Chariot Requiem"].Highlight:Destroy()
    wait(.25)
    local Mob = "Silver Chariot Requiem"
    task.spawn(function () repeat task.wait() Enemies = workspace.Enemies:GetChildren() for i = 1, #Enemies do local v = Enemies[i] if v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid").Health > 0 then game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position) end end until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies["Silver Chariot Requiem"].Head:Destroy()
end
if getgenv().Heaven_Stands["Insta Kill Bosses"]["Sakuya Izayoi"] then
    local hi = Instance.new("Sound") hi.Name = "Notification_Sound" hi.SoundId = "http://www.roblox.com/asset/?id=5153734236" hi.Volume = 5 hi.archivable = false hi.Parent = game.Workspace
    hi:Play() wait(.30)
    Notification:Notify(
        {Title = "Insta Kill", Description = "Started Insta Kill Boss"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=7733964640", ImageColor = Color3.fromRGB(2, 255, 78), Callback = function(State) print(tostring(State)) end}
    ) wait(.25) workspace.Notification_Sound:Destroy()
    
    -- kill
    local Mob = "Sakuya Izayoi"
    task.spawn(function () repeat task.wait() Enemies = workspace.Enemies:GetChildren() for i = 1, #Enemies do local v = Enemies[i] if v.Name == Mob and v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChildOfClass("Humanoid").Health > 0 then game.Players.LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(v.PrimaryPart.Position + Vector3.new(0, 7, 0), v.PrimaryPart.Position) end end until 1+1==2 end) local ohString1 = "MouseButton1" game:GetService("ReplicatedStorage").Remote_Events.Input_Remote:InvokeServer(ohString1) wait(.25) workspace.Enemies["Sakuya Izayoi"].Head:Destroy()
end





-- player options
if getgenv().Heaven_Stands["Player Options"]["Character"]["Disable Character Functions"] then
    chr.Character_Functions.Enabled = false
else
    chr.Character_Functions.Enabled = true
end
if getgenv().Heaven_Stands["Player Options"]["Character"]["Disable Animate"] then
    chr.Animate.Enabled = false
else
    chr.Animate.Enabled = true
end
if getgenv().Heaven_Stands["Player Options"]["Others Options"]["Enable Speed and Jump"] then
    hum.WalkSpeed = getgenv().Heaven_Stands["Player Options"]["Others Options"]["WalkSpeed"]
    hum.JumpPower = getgenv().Heaven_Stands["Player Options"]["Others Options"]["JumpPower"]
end





-- visual options
if getgenv().Heaven_Stands["Visual Options"]["Vergil 2 Swords"] then
    chr.Ability.Sword.Prop.Transparency = 0
end
if getgenv().Heaven_Stands["Visual Options"]["RTX Mode"] then
    local find1 = game.Lighting:FindFirstChildWhichIsA("BloomEffect") if find1 then     game.Lighting:FindFirstChildWhichIsA("BloomEffect"):Destroy() end local find2 = game.Lighting:FindFirstChildWhichIsA("SunRaysEffect") if find2 then     game.Lighting:FindFirstChildWhichIsA("SunRaysEffect"):Destroy() end local find3 = game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect") if find3 then     game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect"):Destroy() end local find4 = game.Lighting:FindFirstChildWhichIsA("BlurEffect") if find4 then     game.Lighting:FindFirstChildWhichIsA("BlurEffect"):Destroy() end local find5 = game.Lighting:FindFirstChildWhichIsA("Sky") if find5 then     game.Lighting:FindFirstChildWhichIsA("Sky"):Destroy() end local blem = Instance.new("BloomEffect",game.Lighting) local sanrey = Instance.new("SunRaysEffect",game.Lighting) local color = Instance.new("ColorCorrectionEffect",game.Lighting) local blor = Instance.new("BlurEffect",game.Lighting) Instance.new("Sky",game.Lighting) game.Lighting.ExposureCompensation = 0.34 game.Lighting.ShadowSoftness = 1 game.Lighting.EnvironmentDiffuseScale = 0.343 game.Lighting.EnvironmentSpecularScale = 1 game.Lighting.Brightness = 2 game.Lighting.ColorShift_Top = Color3.fromRGB(118,117,108) game.Lighting.OutdoorAmbient = Color3.fromRGB(141,141,141) game.Lighting.GeographicLatitude = 100 game.Lighting.Ambient = Color3.fromRGB(112,112,112) blem.Intensity = 0.5 blem.Size = 22 blem.Threshold = 1.5 sanrey.Intensity = 0.117 sanrey.Spread = 1 blor.Size = 2 color.Contrast = 0.3 color.Saturation = 0.2 color.TintColor = Color3.fromRGB(255,252,224)
end
