ENT.Type			= "anim"
ENT.PrintName		= "Signalling Element"
ENT.Category		= "Metrostroi (utility)"

ENT.Spawnable		= false
ENT.AdminSpawnable	= false

ENT.TrafficLightModels = {}
ENT.RenderOffset = {}
ENT.BasePosition = Vector(-110,32,0)

Metrostroi.Signal_2 = 1
Metrostroi.Signal_3 = 2
Metrostroi.Signal_IS = 3
Metrostroi.Signal_RP = 4


-- Lamp indexes
-- 0 Red
-- 1 Yellow
-- 2 Green
-- 3 Blue
-- 4 Second yellow (flashing yellow)
-- 5 White

Metrostroi.RoutePointer = {
	[""] = {
	false,false,false,false,false,
	false,false,false,false,false,
	false,false,false,false,false,
	false,false,false,false,false,
	false,false,false,false,false,
	false,false,false,false,false,
	false,false,false,false,false,
	},
	["1"] = {
	false,false,true ,false,false,
	false,true ,true ,false,false,
	true ,false,true ,false,false,
	false,false,true ,false,false,
	false,false,true ,false,false,
	false,false,true ,false,false,
	true ,true ,true ,true ,true ,
	},
	["2"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	false,false,false,false,true ,
	false,false,false,true,false,
	false,false,true ,false,false,
	false,true ,false,false,false,
	true ,true ,true ,true ,true ,
	},
	["3"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	false,false,false,false,true ,
	false,false,true ,true ,false,
	false,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["4"] = {
	false,false,false,true ,false,
	false,false,true ,true ,false,
	false,true ,false,true ,false,
	true ,false,false,true ,false,
	true ,true ,true ,true ,true ,
	false,false,false,true ,false,
	false,false,false,true ,false,
	},
	["5"] = {
	true ,true ,true ,true ,true ,
	true ,false,false,false,false,
	true ,true ,true ,true ,false,
	false,false,false,false,true ,
	false,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["6"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,false,false,
	true ,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["7"] = {
	true ,true ,true ,true ,true ,
	false,false,false,false,true ,
	false,false,false,true ,false,
	false,false,true ,false,false,
	false,true ,false,false,false,
	false,true ,false,false,false,
	false,true ,false,false,false,
	},
	["8"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["9"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,true ,
	false,false,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["0"] = {
	false,true ,true ,true ,false,
	true ,false,false,false,true ,
	true ,false,false,true ,true ,
	true ,false,true ,false,true ,
	true ,true ,false,false,true ,
	true ,false,false,false,true ,
	false,true ,true ,true ,false,
	},
	["D"] = {
	false,true ,true ,true ,false,
	false,true ,false,true ,false,
	false,true ,false,true ,false,
	false,true ,false,true ,false,
	false,true ,false,true ,false,
	true ,true ,true ,true ,true ,
	true ,false,false,false,true ,
	},
}
Metrostroi.Lenses = {
	["R"] = Color(255,0,0),
	["Y"] = Color(255,127,0),
	["G"] = Color(0,255,0),
	["W"] = Color(255,255,255),
	["B"] = Color(0,0,255),
}
--[[
ENT.LightType = 0
ENT.Name = ""
ENT.Lenses = {
}
ENT.RouteNumber = ""
ENT.OnlyARS = false

ENT.Routes = {
}
]]
--------------------------------------------------------------------------------
-- Inside
--------------------------------------------------------------------------------
ENT.RenderOffset[0] = Vector(0,0,112+32)
ENT.TrafficLightModels[0] = {
	["m1"]	= "models/metrostroi/signals/box.mdl",
	["m2"]	= "models/metrostroi/signals/pole_2.mdl",
	["name"]	= Vector(-2,2.5,-25),
	[1]	= { 32, "models/metrostroi/signals/light_2.mdl", {
				[0] = Vector(8,5,25),
				[1] = Vector(8,5,14), 
				}},
	[2]	= { 40, "models/metrostroi/signals/light_3.mdl", {
				[0] = Vector(8,5,35),
				[1] = Vector(8,5,25),
				[2] = Vector(8,5,14), 
				}},

	[4] = { 18, "models/metrostroi/signals/light_path.mdl",  Vector(13.1,2, 19.5), 1.75, 2.05, 4},
}


--------------------------------------------------------------------------------
-- Outside
--------------------------------------------------------------------------------
ENT.RenderOffset[1] = Vector(0,0,264)
ENT.TrafficLightModels[1] = {
	["m1"]	= "models/metrostroi/signals/pole_1.mdl",
	["name"]	= Vector(0,2,-15),
	[1]	= { 50, "models/metrostroi/signals/light_outside_2.mdl", {
				[0] = Vector(0,15,20),
				[1] = Vector(0,15, 9),
				}},
	[2]	= { 60, "models/metrostroi/signals/light_outside_3.mdl", {
				[0] = Vector(0,15,31), 
				[1] = Vector(0,15,20), 			
				[2] = Vector(0,15, 9),
				} },

	[3] = { 25, "models/metrostroi/signals/light_outside_1.mdl" , {
				[0] = Vector(0,15, 9)
				}},
	[4] = { 40, "models/metrostroi/signals/light_outside_path.mdl",  Vector(7,11, 25), 3.6, 3.4, 5},
}


--------------------------------------------------------------------------------
-- Outside box
--------------------------------------------------------------------------------
ENT.RenderOffset[2] = Vector(0,0,112+30)
ENT.TrafficLightModels[2] = {
	["m1"]	= "models/metrostroi/signals/box_outside.mdl",
	["m2"]	= "models/metrostroi/signals/pole_3.mdl",
	["name"]	= Vector(-4,2.5,-20),
	[1]	= { 32, "models/metrostroi/signals/light_outside2_2.mdl", {
				[0] = Vector(10,5,28),
				[1] = Vector(10,5,16),
				}},
	[2]	= { 45, "models/metrostroi/signals/light_outside2_3.mdl", {
				[0] = Vector(10,5,38),
				[1] = Vector(10,5,28), 		
				[2] = Vector(10,5,16),
				}},

	[4] = { 20, "models/metrostroi/signals/light_outside2_path.mdl",  Vector(13.8,2, 22.8), 1.8, 2.1, 4},
}