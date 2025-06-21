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

-- Tab and Section
local GagTab = Window:CreateTab("grow a garden", 4483362458)
local GagSection = GagTab:CreateSection("spawner visual")

-- Notify
Rayfield:Notify({
   Title = "Script Executed!",
   Content = "Follow @calix.mendoza00 on TikTok 😎",
   Duration = 10
})

-- GAG Spawner
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

-- No Lag Script
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

-- Zysume GAG Script
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
