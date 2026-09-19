--[[
───────────────────────────────────────────────────────────────

	SEM_Loadout (config.lua) - Created by Scott M
	Current Version: v1.2 (Feb 2020)
	
	Support: https://semdevelopment.com/discord

───────────────────────────────────────────────────────────────
]]



Config = {}


--This determines what will be the button to open the menus
--Default 38 [E]  |  To change the button check out https://docs.fivem.net/game-references/controls/
--!!!CONTROLER SUPPORT IS DISABLED!!!
Config.Button = 38

--This determines what button will be shown in the help text
--Default ~INPUT_PICKUP~  |  To change the button check out https://docs.fivem.net/game-references/controls/
Config.ButtonHelp = '~INPUT_PICKUP~'

--This determines what color the markers will be
--Default = [255, 255, 255, 150]
Config.Colour = {r = 0, g = 90, b = 255, a = 150}

--This determines what size the markers will be
--Default = [1.15, 0.40]
Config.Size = {w = 1.25, h = 0.40}

--This determines how close you need to be for the marker to be displayed
--Default = 10
Config.DisplayDistance = 25



--This determines how wide the menu is
--Default = 80
Config.MenuWidth = 60





--This determines if the LEO Markers are displayed
Config.LEOMarkers = true

--This determies if the Fire & EMS Markers are displayed
Config.FireMarkers = true





--This determines if the armoury locations are displayed
Config.DisplayArmoury = true

--This determines who has access to the LEO Armoury Menu
--!!! NOTE: If LEO Peds is selected, peds in the 'Config.LockerContents' will have access to the LEO Menu !!!
--Everyone = 0 [Default] | LEO Peds = 1 | Ace Permissions = 2
Config.ArmouryAccess = 0

--This determines where the armoury markers are located
--You can use the '/coords' command to get the coordinates
Config.ArmouryLocations = {
	vec3(467.08, -1011.12, 29.12), -- MRPD
}

--[[
    EXAMPLE: 
	a = {
		{weapon = 'b', components = 'c', 'c'},
	},
    ────────────────────────────────────────────────────────────────
    'a' is the title of the Loadout
    'b' is the weapon which you want to be added [A link to weapon name can be found below]
	'c' is the components which you want to be added to the weapon [A link to available weapon components can be found below]

	Weapon Name   https://forum.fivem.net/t/list-of-weapon-spawn-names-after-hours/90750
	Weapon Components   https://wiki.rage.mp/index.php?title=Weapons_Components
]]
Config.ArmouryContents = {
	['LEO'] = {
		{weapon = 'weapon_flashlight', components = {''}},
		{weapon = 'WEAPON_COLBATON', components = {''}},
		{weapon = 'weapon_combatpistol', components = {'component_at_pi_flsh'}},
		{weapon = 'weapon_stungun', components = {''}},
		{weapon = 'WEAPON_GLOCK20', components = {'COMPONENT_GLOCK20_FLSH_01', 'COMPONENT_GLOCK20_CLIP_02'}},
		{weapon = 'weapon_carbinerifle', components = {'component_at_ar_flsh', 'component_at_scope_medium', 'component_at_ar_afgrip'}},
		{weapon = 'WEAPON_FM1_BENELLIM4', components = {'COMPONENT_FM1_BENELLIM4_FLSH_01'}},
		{weapon = 'weapon_fireextinguisher', components = {''}},
		{weapon = 'weapon_flare', components = {''}},
	},

}



--This determines if the locker locations are displayed
Config.DisplayLocker = false

--This determines who has access to the LEO Locker Menu
--Everyone = 0 [Default] | Ace Permissions = 1
Config.LockerAccess = 0

--This determines where the locker markers are located
--You can use the '/coords' command to get the coordinates
Config.LockerLocations = {}

Config.LockerContents = {}



--This determines if the garage locations are displayed
Config.DisplayGarage = true

--This determines who has access to the LEO Garage Menu
--!!! NOTE: If LEO Peds is selected, peds in the 'Config.LockerContents' will have access to the LEO Menu !!!
--Everyone = 0 [Default] | LEO Peds = 1 | Ace Permissions = 2
Config.GarageAccess = 0

--This determines where the garage markers are located
--You can use the '/coords' command to get the coordinates
Config.GarageLocations = {
	{Marker = vec3(468.0, -975.24, 23.12), Spawn = {x = 470.4, y = -975.28, z = 22.92, h = 89.24}}, -- MRPD 02
	{Marker = vec3(468.04, -978.4, 23.12), Spawn = {x = 470.68, y = -978.32, z = 22.92, h = 88.12}}, -- MRPD 03
}

--[[
    EXAMPLE: 
	{name = 'a', spawncode = 'b', extras = {c, c}, badge = d},
    ────────────────────────────────────────────────────────────────
    'a' is the title of the of the Vehicle
	'b' is the spawncode of the vehicle
	'c' is any extras which you would like added by default, these are numbers
	'd' is whether the grille modkit (badge) is set to 1 on spawn [true / false]
]]
Config.GarageContents = {
['LSPD'] = {
    {name = '2011 Ford CVPI', spawncode = 'ULC11CVPI', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Ford CVPI Slicktop', spawncode = 'ULC11CVPISlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger', spawncode = 'ULC14Charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger Slicktop', spawncode = 'ULC14ChargSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU', spawncode = 'ULC16FPIU', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU Slicktop', spawncode = 'ULC16FPIUSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe', spawncode = 'ULC18Tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe Slicktop', spawncode = 'ULC18TahoeSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus', spawncode = 'ULC18Taurus', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus Slicktop', spawncode = 'ULC18TaurusSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger', spawncode = 'ULC20Charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger Slicktop', spawncode = 'ULC20ChargSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango', spawncode = 'ULC20DUR', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango Slicktop', spawncode = 'ULC20DURSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU', spawncode = 'ULC20FPIU', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU Slicktop', spawncode = 'ULC20FPIUSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe', spawncode = 'ULC22Tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe Slicktop', spawncode = 'ULC22TahoeSlick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
},

['SAHP'] = {
	{name = '2011 Ford CVPI', spawncode = 'defender11cvpi', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Ford CVPI Slicktop', spawncode = 'defender11cvpislick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2013 Ford FPIU', spawncode = 'defender13fpiu', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2013 Ford FPIU Slicktop', spawncode = 'defender13fpiuslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger', spawncode = 'defender14charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger Slicktop', spawncode = 'defender14chargslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Chevy Tahoe', spawncode = 'defender14tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Chevy Tahoe Slicktop', spawncode = 'defender14tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU', spawncode = 'defender16fpiu', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU Slicktop', spawncode = 'defender16fpiuslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford F-150', spawncode = 'defender18f150', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford F-150 Slicktop', spawncode = 'defender18f150slick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus', spawncode = 'defender18fpis', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus Slicktop', spawncode = 'defender18fpisslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe', spawncode = 'defender18tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe Slicktop', spawncode = 'defender18tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger', spawncode = 'defender20charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger Slicktop', spawncode = 'defender20chargslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango', spawncode = 'defender20dur', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango Slicktop', spawncode = 'defender20durslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU', spawncode = 'defender20fpiu', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU Slicktop', spawncode = 'defender20fpiuslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe', spawncode = 'defender22tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe Slicktop', spawncode = 'defender22tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
},

['BCSO'] = {
	{name = '2010 Dodge Charger', spawncode = 'm10charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2010 Dodge Charger Slicktop', spawncode = 'm10chargslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Ford CVPI', spawncode = 'm11cvpi', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Ford CVPI Slicktop', spawncode = 'm11cvpislick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Chevy Impala', spawncode = 'm11imp', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2011 Chevy Impala Slicktop', spawncode = 'm11impslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger', spawncode = 'm14charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Dodge Charger Slicktop', spawncode = 'm14chargslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Chevy Tahoe', spawncode = 'm14tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2014 Chevy Tahoe Slicktop', spawncode = 'm14tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU', spawncode = 'm2016fpiu', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2016 Ford FPIU Slicktop', spawncode = 'm2016fpiuslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford F-150', spawncode = 'm2018f150', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford F-150 Slicktop', spawncode = 'm2018f150slick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus', spawncode = 'm18taurus', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Ford Taurus Slicktop', spawncode = 'm18taurusslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe', spawncode = 'm18tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2018 Chevy Tahoe Slicktop', spawncode = 'm18tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger', spawncode = 'm20charg', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Charger Slicktop', spawncode = 'm20chargslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango', spawncode = 'm20dur', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Dodge Durango Slicktop', spawncode = 'm20durslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU', spawncode = 'm20fpiu', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2020 Ford FPIU Slicktop', spawncode = 'm20fpiuslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe', spawncode = 'm2022tahoe', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = '2022 Chevy Tahoe Slicktop', spawncode = 'm2022tahoeslick', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
},

}



--This determines if the vehicle deleters locations are displayed
Config.DisplayVehicleDeleters = false

--This determines who has access to the LEO Deleter Menu
--!!! NOTE: If LEO Peds is selected, peds in the 'Config.LockerContents' will have access to the LEO Menu !!!
--Everyone = 0 [Default] | LEO Peds = 1 | Ace Permissions = 2
Config.DeleterAccess = 0

--This determines where the vehicle deleter markers are located
--You can use the '/coords' command to get the coordinates
Config.VehicleDeleterLocations = {
	{x = 1870.62, y = 3701.60, z = 33.34} --Sandy Shores
}



--This determines if the jail locations are displayed
Config.DisplayJail = true

--This determines who has access to the LEO Jail Menu
--!!! NOTE: If LEO Peds is selected, peds in the 'Config.LockerContents' will have access to the LEO Menu !!!
--Everyone = 0 [Default] | LEO Peds = 1 | Ace Permissions = 2
Config.JailAccess = 0

--This determines what the lowest and highest time someone can be jailed for
--Default Time | Min = 30  &  Max = 300
--If you wouldn't like any limits put 0
Config.JailTimes = {
	Min = 30,
	Max = 300,
}

--This determines where the jail markers are located
--You can use the '/coords' command to get the coordinates
Config.JailLocations = {
	{x = 1792.69, y = 2593.67, z = 45.79}, --Prison
	{x = 1853.05, y = 3689.45, z = 34.26}, --Sandy Shores
}





--This determines if the fire loadout locations are displayed
Config.DisplayLoadout = true

--This determines who has access to the Fire Loadout Menu
--Everyone = 0 [Default] | Ace Permissions = 1
Config.LoadoutAccess = 0

--This determines where the fire loadout markers are located
--You can use the '/coords' command to get the coordinates
Config.LoadoutLocations = {
	{x = 1691.97, y = 3586.19, z = 35.62}, --Sandy Shores
}

--[[
    EXAMPLE: 
	a = {
		{uniform = 'b'},

		{weapon = 'c'},
		{weapon = 'c'},
	},
    ────────────────────────────────────────────────────────────────
    'a' is the title of the Loadout
    'b' is the spawncode of the uniform
	'c' is the weapon which you want to be added [A link to weapon name can be found below]
	
	!!!  You can have multiple weapons, but only ONE uniform  !!!

	Weapon Name   https://forum.fivem.net/t/list-of-weapon-spawn-names-after-hours/90750
]]
Config.LoadoutContents = {
	['Fire'] = {
		{uniform = 's_m_y_fireman_01'},

		{weapon = 'weapon_knife'},
		{weapon = 'weapon_flashlight'},
		{weapon = 'weapon_fireextinguisher'},
		{weapon = 'weapon_flare'},
		{weapon = 'weapon_stungun'},
		{weapon = 'weapon_hatchet'},
	},

	['EMS'] = {
		{uniform = 's_m_m_paramedic_01'},

		{weapon = 'weapon_knife'},
		{weapon = 'weapon_flashlight'},
		{weapon = 'weapon_fireextinguisher'},
		{weapon = 'weapon_flare'},
		{weapon = 'weapon_stungun'},
		{weapon = 'weapon_hatchet'},
	},
}



--This determines if the garage locations are displayed
Config.DisplayFireGarage = true

--This determines who has access to the Fire Garage Menu
--!!! NOTE: If Fire Peds is selected, peds in the 'Config.LoadoutContents' will have access to the Fire Menu !!!
--Everyone = 0 [Default] | Fire Peds = 1 | Ace Permissions = 2
Config.FireGarageAccess = 0

--This determines where the garage markers are located
--You can use the '/coords' command to get the coordinates
Config.FireGarageLocations = {
	{Marker = {x = 1692.23, y = 3610.67, z = 35.32}, Spawn = {x = 1692.68, y = 3605.19, z = 35.47, h = 210.14}} --Sandy Shores
}

--[[
    EXAMPLE: 
	{name = 'a', spawncode = 'b', extras = {c, c}, badge = d},
    ────────────────────────────────────────────────────────────────
    'a' is the title of the of the Vehicle
	'b' is the spawncode of the vehicle
	'c' is any extras which you would like added by default, these are numbers
	'd' is whether the grille modkit (badge) is set to 1 on spawn [true / false]
]]
Config.FireGarageContents = {
	{name = 'Engine', spawncode = 'firetruk', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
	{name = 'Ambulance', spawncode = 'ambulance', extras = {1,2,3,4,5,6,7,8,9,10,11,12}, badge = true},
}



--This determines if the vehicle deleters locations are displayed
Config.DisplayFireVehicleDeleters = false

--This determines who has access to the Fire Deleter Menu
--!!! NOTE: If Fire Peds is selected, peds in the 'Config.LoadoutContents' will have access to the Fire Menu !!!
--Everyone = 0 [Default] | Fire Peds = 1 | Ace Permissions = 2
Config.FireDeleterAccess = 0

--This determines where the vehicle deleter markers are located
--You can use the '/coords' command to get the coordinates
Config.FireVehicleDeleterLocations = {
	{x = 1713.70, y = 3600.21, z = 35.16} --Sandy Shores
}