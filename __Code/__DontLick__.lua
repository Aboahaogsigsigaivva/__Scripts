-- libray / windown / tabs
local NotificationHolder, Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))(), loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/mz580Lye"))()
local Window = library:AddWindow("InfinityHub  |  "..game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId).Name,
  {
	main_color = Color3.fromRGB(80, 80, 80),
	min_size = Vector2.new(500, 563),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
})
local FarmingTab = Window:AddTab("Farming")
local CreditsTab = Window:AddTab("Credits")



-- code
FarmingTab:AddButton("Get All Tooth", function()
  workspace.BoxGame.TubeUnion.Size = Vector3.new(0.1, 0.1, 0.1)
  for _, v in pairs(workspace.Teeth:GetChildren()) do
    if v:IsA('Model') then
      for _, x in pairs(v:GetChildren()) do
        if x.Transparency == 0 then
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            x.CFrame wait(.2) x.ProximityPrompt.HoldDuration = 0.1 wait(.2) x.ProximityPrompt.MaxActivationDistance = 9 wait(.2) fireproximityprompt(x.ProximityPrompt)
        end
        if x.Transparency == 1 then
          warn('all teeth were collected')
          break
        end
      end
    end
  end
end)
FarmingTab:AddButton("Delete Lick", function()
  for _, v in pairs(workspace:GetChildren()) do
    if v:IsA('Model') and v.Name == 'Enemy' then
      v:Remove()
    end
  end
end)
FarmingTab:AddButton("Auto Escape [Need all 14 teeth]", function()
  workspace.EndingDoor.CoreInserter.MainOval.CorePrompt.HoldDuration = 0.1
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
  wait(.5)

  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Everything.DoorsAndPickups.CorePickup.CorePickup.CFrame wait(1) fireproximityprompt(workspace.Everything.DoorsAndPickups.CorePickup.CorePickup.ProximityPrompt)
  wait(2)

  for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA('Tool') and v.Name == 'Core' then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
    end
  end
  wait(1)

  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
    -197.998169, 3.66985703, -281.378143, -0.00942657609, 1.13589751e-08, 0.999955595, 1.09514371e-08, 1, -1.12562404e-08, -0.999955595, 1.08448432e-08, -0.00942657609
  ) wait(.2) fireproximityprompt(workspace.EndingDoor.CoreInserter.MainOval.CorePrompt) wait(.2) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Everything.Objects.WALLS.Wall.CFrame
end)
local EspEntityToggle = FarmingTab:AddSwitch("Many wins in 1 final [Beta]", function(state)
  workspace.BoxGame.TubeUnion.Size = Vector3.new(0.1, 0.1, 0.1)
  settings = state
  if settings then
    for _, v in pairs(workspace.Teeth:GetChildren()) do
      if v:IsA('Model') then
        for _, x in pairs(v:GetChildren()) do
          if x.Transparency == 0 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
              x.CFrame wait(.2) x.ProximityPrompt.HoldDuration = 0.1 wait(.2) x.ProximityPrompt.MaxActivationDistance = 9 wait(.2) fireproximityprompt(x.ProximityPrompt)
          end
          if x.Transparency == 1 then
            warn('all teeth were collected')
            break
          end
        end
      end
    end
    wait(1)
    workspace.EndingDoor.CoreInserter.MainOval.CorePrompt.HoldDuration = 0.1
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
    wait(.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Everything.DoorsAndPickups.CorePickup.CorePickup.CFrame wait(1) fireproximityprompt(workspace.Everything.DoorsAndPickups.CorePickup.CorePickup.ProximityPrompt)
    wait(1)
    for _, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
      if v:IsA('Tool') and v.Name == 'Core' then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(v);
      end
    end
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(
      -197.998169, 3.66985703, -281.378143, -0.00942657609, 1.13589751e-08, 0.999955595, 1.09514371e-08, 1, -1.12562404e-08, -0.999955595, 1.08448432e-08, -0.00942657609
    ) wait(.2) fireproximityprompt(workspace.EndingDoor.CoreInserter.MainOval.CorePrompt) wait(.2) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Everything.Objects.WALLS.Wall.CFrame
    wait(5)
    game:GetService("ReplicatedStorage").RequestRespawn:FireServer()
    while wait() and settings do
      game:GetService("ReplicatedStorage").AttemptEscape:FireServer()
    end
  end
end)
local EspEntityToggle = FarmingTab:AddSwitch("Advance auto win [Many Win [Dont Move]]", function(state)
  workspace.BoxGame.TubeUnion.Size = Vector3.new(0.1, 0.1, 0.1)
  settings = state
  if settings then
    while wait() and settings do
      for _, v in pairs(workspace.Teeth:GetChildren()) do
        if v:IsA('Model') then
          for _, x in pairs(v:GetChildren()) do
            if x.Transparency == 0 then
              game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                x.CFrame wait(.2) x.ProximityPrompt.HoldDuration = 0.1 wait(.2) x.ProximityPrompt.MaxActivationDistance = 9 wait(.2) fireproximityprompt(x.ProximityPrompt)
            end
            if x.Transparency == 1 then
              warn('all teeth were collected')
              break
            end
          end
        end
      end
      game:GetService("Players").LocalPlayer.PlayerGui.EndingGui.Enabled = false
      game:GetService("ReplicatedStorage").AttemptEscape:FireServer()
    end
  end
end)
local EspEntityToggle = FarmingTab:AddSwitch("Esp Entity", function(state)
  local esp = Instance.new('Highlight')
  esp.Name = 'EspEntity'
  esp.FillColor = Color3.new(255, 0, 0)
  settings = state
  
  if settings then
    for _, v in pairs(workspace:GetChildren()) do
      if v:IsA('Model') and v.Name == 'Enemy' then
        esp.Parent = v
      end
    end
  else
    workspace.Enemy.EspEntity:Remove()
  end
end)



-- Credits
CreditsTab:AddLabel("Credits: Made by InfinityMercury and Darkzin")
CreditsTab:AddLabel("KeyBind: J")
