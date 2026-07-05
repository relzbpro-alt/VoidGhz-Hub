-- Load the Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create the main Menu Window
local Window = Rayfield:CreateWindow({
   Name = "Void Hub | Blox Fruits",
   LoadingTitle = "Loading Void Hub...",
   LoadingSubtitle = "by relzbpro-alt",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false -- Set to true if you want to add a key system later
})

-- Create a Tab inside the window
local MainTab = Window:CreateTab("Main Farm", 4483362458) -- The number is an icon ID

-- Create a Toggle Button for the Auto Farm
local FarmToggle = MainTab:CreateToggle({
   Name = "Auto Farm Level",
   CurrentValue = false,
   Flag = "Toggle1", -- Unique identifier for this button
   Callback = function(Value)
      _G.AutoFarm = Value
      
      if Value then
          print("Auto Farm Turned ON")
          -- Your auto farm loop code goes here
          task.spawn(function()
              while _G.AutoFarm do
                  task.wait(1)
                  -- (The background farm mechanics run inside here)
              end
          end)
      else
          print("Auto Farm Turned OFF")
      end
   end,
})

-- Notify the player that the script loaded successfully
Rayfield:Notify({
   Title = "Void Hub Loaded",
   Content = "Enjoy scripting!",
   Duration = 5,
   Image = 4483362458,
})
