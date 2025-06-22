-- 🎉 Fancy intro message
print("━━━━━━━━━━━━━━━━━━━━")
print("🌟 Welcome to Calix Hub 🌟")
print("📢 Follow calix.mendoza00 on tiktok!")
print("━━━━━━━━━━━━━━━━━━━━")

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
   ["wave"] = true,
   ["delta"] = true
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

   -- Cool overlay with logo and animated message
   local ScreenGui = Instance.new("ScreenGui")
   ScreenGui.Name = "FollowCalixOverlay"
   ScreenGui.ResetOnSpawn = false
   ScreenGui.IgnoreGuiInset = true
   ScreenGui.Parent = game:GetService("CoreGui")

   local ImageLabel = Instance.new("ImageLabel")
   ImageLabel.Size = UDim2.new(0.3, 0, 0.3, 0)
   ImageLabel.Position = UDim2.new(0.35, 0, 0.15, 0)
   ImageLabel.BackgroundTransparency = 1
   ImageLabel.Image = "rbxassetid://94455500773249"
   ImageLabel.Parent = ScreenGui

   local TextLabel = Instance.new("TextLabel")
   TextLabel.Size = UDim2.new(1, 0, 1, 0)
   TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
   TextLabel.BackgroundTransparency = 0.5
   TextLabel.Text = "Follow @calix.mendoza00 on TikTok 😎"
   TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
   TextLabel.Font = Enum.Font.GothamBold
   TextLabel.TextScaled = true
   TextLabel.Parent = ScreenGui

   wait(3)
   ScreenGui:Destroy()

   local Window = Rayfield:CreateWindow({
      Name = "Calix Hub | Script GUI",
      LoadingTitle = "Calix Hub Loading...",
      LoadingSubtitle = "Follow calix 🌀",
      ShowText = "script",
      Theme = "Default",
      ToggleUIKeybind = "K",
      DisableRayfieldPrompts = false,
      DisableBuildWarnings = false,
      ConfigurationSaving = {
         Enabled = true,
         FolderName = nil,
         FileName = "KeyGameScript"
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

   -- 🏴‍☠️ Create Tab: Bloxfruit
   local BloxfruitTab = Window:CreateTab("Bloxfruit🏴‍☠️", 4483362458)

   -- 💰 Create Section: Autofarm
   local AutofarmSection = BloxfruitTab:CreateSection("Autofarm💰")

   -- 🔘 Add Button: Xero Hub
   Rayfield:CreateButton({
      Name = "Xero Hub",
      Callback = function()
         getgenv().Team = "Marines"
         getgenv().Hide_Menu = false
         getgenv().Auto_Execute = false
         loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
      end,
      SectionParent = AutofarmSection
   })

   -- 🔘 Add Button: Redz Hub
   Rayfield:CreateButton({
      Name = "Redz Hub",
      Callback = function()
         local Settings = {
            JoinTeam = "Pirates", -- Pirates / Marines
            Translator = true,    -- true / false
         }
         loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))(Settings)
      end,
      SectionParent = AutofarmSection
   })
else
   fallbackNotice()
   print("[Fallback] Loading your custom script...")
   loadstring(game:HttpGet("https://raw.githubusercontent.com/calixpogi/game-script/main/myscript.lua"))()
end
