-- Fullscreen message (3 seconds) BEFORE anything else
local preGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
preGui.ResetOnSpawn = false
local msgLabel = Instance.new("TextLabel", preGui)
msgLabel.Size = UDim2.new(1, 0, 1, 0)
msgLabel.BackgroundColor3 = Color3.new(0, 0, 0)
msgLabel.BackgroundTransparency = 0.3
msgLabel.Text = "🔥 Follow @calix.mendoza00 on TikTok 🔥"
msgLabel.TextColor3 = Color3.new(1, 1, 1)
msgLabel.Font = Enum.Font.GothamBold
msgLabel.TextScaled = true
wait(3)
preGui:Destroy()

-- Detect executor
local executor = identifyexecutor and identifyexecutor():lower() or "unknown"
print("Detected executor:", executor)

-- Table of supported executors
local supportedExecutors = {
   ["krnl"] = true,
   ["fluxus"] = true,
   ["synapse x"] = true,
   ["xodex"] = true,
   ["codex"] = true,
   ["xeno"] = true,
   ["solara"] = true,
   ["wave"] = true
}

-- Fallback notice
local function fallbackNotice()
   local m = Instance.new("Message", game:GetService("CoreGui"))
   m.Text = "Your executor doesn't support Rayfield. Use KRNL, Fluxus, or PC-based executors for full GUI."
   wait(5)
   m:Destroy()
end

if supportedExecutors[executor] then
   local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

   local music = Instance.new("Sound", game:GetService("SoundService"))
   music.SoundId = "rbxassetid://1837468642"
   music.Looped = true
   music.Volume = 0.3
   music:Play()

   local function stopMusic()
      if music and music.IsPlaying then
         music:Stop()
      end
   end

   local Window = Rayfield:CreateWindow({
      Name = "game script hub",
      Icon = 0,
      LoadingTitle = "game script hub",
      LoadingSubtitle = "by calixpogi",
      ShowText = "script",
      Theme = "Default",
      ToggleUIKeybind = "K",

      DisableRayfieldPrompts = false,
      DisableBuildWarnings = false,

      ConfigurationSaving = {
         Enabled = true,
         FolderName = nil,
         FileName = "nil"
      },

      Discord = {
         Enabled = false,
         Invite = "noinvitelink",
         RememberJoins = true
      },

      KeySystem = true,
      KeySettings = {
         Title = "game script key lol",
         Subtitle = "Watch video",
         Note = "Watch the full video to get the key",
         FileName = "KeyGameScript",
         SaveKey = true,
         GrabKeyFromSite = true,
         Key = {"https://pastebin.com/raw/maQrx00Z"}
      }
   })

   Rayfield:Notify({
      Title = "Script Executed!",
      Content = "Follow @calix.mendoza00 on TikTok 😎",
      Duration = 10
   })

   -- GAG Tab
   local GagTab = Window:CreateTab("grow a garden 🌱", 4483362458)
   GagTab:CreateSection("Spawner Visual")
   GagTab:CreateButton({
      Name = "gagspawner [by calix mendoza]",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/DeltaGay/femboy/main/GardenSpawner.lua"))()
         end)
      end
   })

   GagTab:CreateButton({
      Name = "No lag script [by calix mendoza]",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/master/NatHub.lua"))()
         end)
      end
   })

   GagTab:CreateButton({
      Name = "Zysume Gag script [by calix mendoza]",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GRPGaming/Key-System/Xycer-Hub-Script/GAGZ8"))()
         end)
      end
   })

   GagTab:CreateSection("Pet Placer + Spawner")
   GagTab:CreateButton({
      Name = "Pet Placer + Spawner [by calix mendoza]",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GRPGaming/Key-System/refs/heads/Xycer-Hub-Script/ZyGaG6"))()
         end)
      end
   })

   -- Add back Dead Rails Tab
   local DeadRailsTab = Window:CreateTab("Dead rails 🚂", 4483362458)
   DeadRailsTab:CreateSection("Auto Bonds 🢲")
   DeadRailsTab:CreateButton({
      Name = "Auto Bonds",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
         end)
      end
   })

   -- Add Brainrot Tab
   local BrainrotTab = Window:CreateTab("Steal a brainrot 💀", 4483362458)
   BrainrotTab:CreateSection("Brainrot GUIs")
   BrainrotTab:CreateButton({
      Name = "Brainrot GUI 1",
      Callback = function()
         stopMusic()
         Rayfield:Notify({ Title = "Loading...", Content = "Please wait", Duration = 2 })
         pcall(function()
            loadstring(game:HttpGet("https://scripts.city/LegendHub.lua"))()
         end)
      end
   })
else
   fallbackNotice()
   print("[Fallback] Loading your custom script...")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/calixpogi/game-script/main/myscript.lua"))()
end
