local trigger = {
  evolve = false,
  tp = false,
  cyborg = false,
  buyallcrys = false,
  buyalls = false,
  swing = false,
  coin = false,
  orbf = false
}

local self = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local workspace = game:GetService("Workspace")
local handle = {
  orb = {}
}
-- rank
lib:AddTable(workspace["petOrbs"],handle.orb)

local function doGr()
    spawn(function()
        while wait(5) do
        if trigger.evolve == false then break end
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Spirit Warrior"])
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Dragon Enforcer"])
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Elite Soul Hunter"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Awoken Samurai"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Mystic Horizons Master"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Dark Galaxy Assassin"])                                                                           
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Relentless Gladiator"])
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Unleashed Cyberninja"])
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Ancient Millenium Beast"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Infinity Overlord"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Starstrike Megalith"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Underworld Golem"])   
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Dark Universe Hunter"]) 
        self["saberEvent"]:FireServer("buyEvolution",ReplicatedStorage["Evolutions"]["Ground"]["Dual Eternity Legends"])                                                                                                                           
        end
    end)
end




-- sell

local function doSe()
    spawn(function()
        while wait() do 
            if trigger.tp == false then break end
            self.Character.HumanoidRootPart.CFrame = CFrame.new(-86,8631,36)
            wait(0.5)
            self.Character.HumanoidRootPart.CFrame = CFrame.new(-90,8647,36)
            wait(0.5)
        end
    end)
end



-- boss
function doBo()
    spawn(function()
        while wait() do
        if trigger.cyborg == false then break end
        self.Character.HumanoidRootPart.CFrame = workspace["spawnedBosses"]["Elemental Cyborg"]["UpperTorso"]["CFrame"]
        self["saberEvent"]:FireServer("swingBlade")
        wait()
        end
    end)
end







-- crystals 
function doCr()
    spawn(function()
        while wait() do 
            if trigger.buyallcrys == false then break end
            self["saberEvent"]:FireServer("buyAllItems",{["whichItems"] = "Crystals",["whichPlanet"] = "Planet Chaos"})
        end
    end)
end







-- blades
function doB()
    spawn(function()
        while wait() do 
            if trigger.buyalls == false then break end
            self["saberEvent"]:FireServer("buyAllItems",{["whichItems"] = "Swords",["whichPlanet"] = "Planet Chaos"})
        end
    end)
end








-- swing
function doS()
    spawn(function()
    while wait() do
    if trigger.swing == false then break end
        self["saberEvent"]:FireServer("swingBlade")
    end
end)
end







-- shards, coins
function doSh()
    spawn(function()
        while wait() do
            if trigger.coin == false then break end
            for i, v in pairs(workspace["spawnedCoins"]["Shuriken City"]:GetDescendants()) do
                if v.Name == "Shard" and v.Parent then
                    workspace["randomStuff"]["gradientCircle"]["CFrame"] = self["Character"]["HumanoidRootPart"]["CFrame"]
                end
            end
        end
    end)
end

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sidhsksjsjsh/VAPE-UI-MODDED/main/.lua"))()

local wndw = lib:Window("VIP Turtle Hub V4 - 🙁")
local T1 = wndw:Tab("Main")
local T2 = wndw:Tab("Codes")

 T2:Button("Redeem all codes",function()
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("powers500")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("shurikencity500")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("epicturrets450")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("waterfall500")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("newgame500")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("bossbattle300")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("Firstplanet250")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("epictower350")
        ReplicatedStorage["rEvents"]["codeRemote"]:InvokeServer("treeninja400")
end)

--[[
local trigger = {
  evolve = false,
  tp = false,
  cyborg = false,
  buyallcrys = false,
  buyalls = false,
  swing = false,
  coin = false
}
]]

T1:Toggle("Auto sell",false,function(bool)
     trigger.tp = bool
     if bool then
         doSe()
     end
end)
 


T1:Toggle("Auto swing",false,function(bool)
    trigger.swing = bool
    if bool then
        doS()
    end
end) 


T1:Toggle("Auto Crystal (More Element Storage)",false,function(bool)
     trigger.buyallcrys = bool
     if bool then
         doCr()
     end
end)

T1:Toggle("Auto Blade (More Coins)",false,function(bool)
     trigger.buyalls = bool
     if bool then
         doB()
     end
end)


T1:Toggle("Auto Rank",false,function(bool)
     trigger.evolve = bool
     if bool then
         doGr()
     end
end)

T1:Toggle("Auto Boss",false,function(bool)
     getgenv().cyborg = bool
     if bool then
         doBo()
     end
end)

T1:Toggle("Auto Shard/Coin (WIP / Use Volcano Master For Now)",false,function(bool)
     getgenv().coin = bool
     if bool then
         doSh()
     end
end)


local T4 = wndw:Tab("Orb")
--{"Electro Orb","Astral Orb","Sky Tempest Orb","Mystic Fusion Orb","Dark Supernova Orb","Omega Genesis Orb","Secret Shadows Orb","Forgotten Legends Orb","Lighting Storm Orb"}
local selectedOrb = handle.orb[1]
T4:Dropdown("Choose Orb",handle.orb,function(value)
        selectedOrb = value
end)
 
 function doO()
     spawn(function()
         while wait() do
         if trigger.orbf == false then break end
            ReplicatedStorage["rEvents"]["openOrbRemote"]:InvokeServer("openOrb",workspace["petOrbs"][selectedOrb])
            ReplicatedStorage["rEvents"]["autoEvolveRemote"]:InvokeServer("autoEvolvePets")
         end
     end)
 end
 
 
T4:Toggle("Auto Selected Orb (Auto Evolves)",false,function(bool)
      trigger.orbf = bool
      if bool then
          doO()
      end
end)
 
T4:Button("Orb prices",function()
        lib:WarnUser("(Electro = 2k) (Astral = 5k) (Sky = 30k) (Mystic = 75k) (Supernova = 200k) (Omega Genesis = 500k) (Secret Shadows = 2M) (Lighting = 5M) (Forgotten = 10 Green Shards/Tokens)")
end)


local T5 = wndw:Tab("Other Features")

T5:Button("Become Volacano Master",function()
        self.Character.HumanoidRootPart.CFrame = CFrame.new(-352,171,8)
end)

T5:Button("Get all chests",function()
        self.Character.HumanoidRootPart.CFrame = CFrame.new(86,8642,126)
        wait(1)
        self.Character.HumanoidRootPart.CFrame = CFrame.new(87,6321,16)
        wait(1)
        self.Character.HumanoidRootPart.CFrame = CFrame.new(86,4691,128)
        wait(1)
        self.Character.HumanoidRootPart.CFrame = CFrame.new(87,3067,128)
        wait(1)
        self.Character.HumanoidRootPart.CFrame = CFrame.new(87,1477,127)
        wait(1)
        self.Character.HumanoidRootPart.CFrame = CFrame.new(-335,123,217)
end)
 

T5:Button("Buy all skills",function()
        self["saberEvent"]:FireServer("buyAllItems",{["whichItems"] = "Skills",["whichPlanet"] = "Planet Chaos"})
end)

T5:Button("Buy all powers",function()
        self["saberEvent"]:FireServer("buyAllItems",{["whichItems"] = "Powers",["whichPlanet"] = "Planet Chaos"})
end)
