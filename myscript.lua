-- Detect executor
local executor = identifyexecutor and identifyexecutor() or "Unknown"
print("Detected executor:", executor)

-- Table of supported executors
local supportedExecutors = {
   ["KRNL"] = true,
   ["Fluxus"] = true,
   ["Synapse X"] = true,
   ["Xodex"] = true,
   ["Codex"] = true,
   ["Xeno"] = true,
   ["Solara"] = true
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

   -- GAG Tab
   local GagTab = Window:CreateTab("grow a garden 🌱", 4483362458)
   local GagSection = GagTab:CreateSection("Spawner Visual")

   Rayfield:Notify({
      Title = "Script Executed!",
      Content = "Follow @calix.mendoza00 on TikTok 😎",
      Duration = 10
   })

   GagTab:CreateButton({
      Name = "gagspawner",
      Callback = function()
         local success, err = pcall(function()
            local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/DeltaGay/femboy/main/GardenSpawner.lua"))()
            Spawner.Load()
         end)
         if not success then
            warn("Failed to load spawner script: ", err)
         end
      end
   })

   GagTab:CreateButton({
      Name = "No lag script",
      Callback = function()
         local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/master/NatHub.lua"))()
         end)
         if not success then
            warn("Failed to load no-lag script: ", err)
         end
      end
   })

   GagTab:CreateButton({
      Name = "Zysume Gag script",
      Callback = function()
         local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/GRPGaming/Key-System/Xycer-Hub-Script/GAGZ8"))()
         end)
         if not success then
            warn("Failed to load Zysume Gag script: ", err)
         end
      end
   })

   -- Dead Rails Tab
   local DeadRailsTab = Window:CreateTab("Dead rails 🚂", 4483362458)
   local DeadRailsSection = DeadRailsTab:CreateSection("Auto Bonds 🢲")

   DeadRailsTab:CreateButton({
      Name = "Auto Bonds",
      Callback = function()
         local success, err = pcall(function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
         end)
         if not success then
            warn("Failed to load Auto Bonds script: ", err)
         end
      end
   })

   -- Brainrot Tab
   local BrainrotTab = Window:CreateTab("Steal a brainrot 💀", 4483362458)
   local BrainrotSection = BrainrotTab:CreateSection("Steal a brainrot script 🗒️")

   BrainrotTab:CreateButton({
      Name = "Brainrot GUI 1",
      Callback = function()
         local success, err = pcall(function()
            loadstring(game:HttpGet("https://scripts.city/LegendHub.lua"))()
         end)
         if not success then
            warn("Failed to load Brainrot GUI 1: ", err)
         end
      end
   })

   BrainrotTab:CreateButton({
      Name = "Brainrot GUI 2",
      Callback = function()
         local success, err = pcall(function()
            loadstring(game:HttpGet("https://scripts.city/LegendHub.lua"))()
         end)
         if not success then
            warn("Failed to load Brainrot GUI 2: ", err)
         end
      end
   })

else
   -- Fallback for unsupported or mobile executors
   fallbackNotice()
   print("[Fallback] Loading your custom script...")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/calixpogi/game-script/main/myscript.lua"))()
end
