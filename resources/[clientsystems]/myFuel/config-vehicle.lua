Vehicle = {}
Vehicle.DefaultFuelCapacityLiters = 100
Vehicle.DefaultFuelUsage = 1.0
Vehicle.DefaultFuelType = "gasoline"

-- Class multipliers. If you want SUVs to use less fuel, you can change it to anything under 1.0, and vise versa.
Vehicle.Classes = {
	[0] = {FuelCapacityLiters = 50, FuelUsage = 0.6, FuelType = "gasoline"}, -- Compacts
    [1] = {FuelCapacityLiters = 60, FuelUsage = 0.6, FuelType = "gasoline"}, -- Sedans
    [2] = {FuelCapacityLiters = 80, FuelUsage = 0.6, FuelType = "gasoline"}, -- SUVs
    [3] = {FuelCapacityLiters = 60, FuelUsage = 0.6, FuelType = "gasoline"}, -- Coupes
    [4] = {FuelCapacityLiters = 60, FuelUsage = 0.6, FuelType = "gasoline"}, -- Muscle
    [5] = {FuelCapacityLiters = 80, FuelUsage = 0.6, FuelType = "gasoline"}, -- Sports Classics
    [6] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "gasoline"}, -- Sports
    [7] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "gasoline"}, -- Super Sports
    [8] = {FuelCapacityLiters = 30, FuelUsage = 0.6, FuelType = "gasoline"}, -- Motorcycles
    [9] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "gasoline"}, -- Off-road
    [10] = {FuelCapacityLiters = 300, FuelUsage = 0.6, FuelType = "diesel"}, -- Industrial
    [11] = {FuelCapacityLiters = 80, FuelUsage = 0.6, FuelType = "diesel"}, -- Utility
    [12] = {FuelCapacityLiters = 60, FuelUsage = 0.6, FuelType = "gasoline"}, -- Vans
    [13] = {FuelCapacityLiters = 0, FuelUsage = 0.0, FuelType = nil}, -- Cycles
    [14] = {FuelCapacityLiters = 50, FuelUsage = 0.6, FuelType = "diesel"}, -- Boats
    [15] = {FuelCapacityLiters = 600, FuelUsage = 0.6, FuelType = "paraffin"}, -- Helicopters
    [16] = {FuelCapacityLiters = 600, FuelUsage = 0.6, FuelType = "paraffin"}, -- Planes
    [17] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "diesel"}, -- Service
    [18] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "diesel"}, -- Emergency
    [19] = {FuelCapacityLiters = 300, FuelUsage = 0.9, FuelType = "diesel"}, -- Military
    [20] = {FuelCapacityLiters = 300, FuelUsage = 0.6, FuelType = "diesel"}, -- Commercial
    [21] = {FuelCapacityLiters = 100, FuelUsage = 0.6, FuelType = "diesel"}, -- Trains
}

--Model multipliers. only fill the models if you want sth different from classes
Vehicle.Models = {
	["adder"] = {FuelCapacityLiters = 80, FuelUsage = 1.0, FuelType = "gasoline"}
	
	,["airtug"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}	
	,["caddy"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["caddy2"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["caddy3"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["cyclone"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["dilettante"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["dilettante2"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["imorgon"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["khamelion"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["neon"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["raiden"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["rcbandito"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["surge"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["tezeract"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
	,["voltic"] = {FuelCapacityLiters = 100, FuelUsage = 1.0, FuelType = "electricity"}
}

Vehicle.ModelsSociety = {
    ["ambulance"] = "society_ambulance"
    ,["fbi"] = "society_police"
    ,["fbi2"] = "society_police"
    ,["pbus"] = "society_police"
    ,["police"] = "society_police"
    ,["police2"] = "society_police"
    ,["police3"] = "society_police"
    ,["police4"] = "society_police"
    ,["policeb"] = "society_police"
    ,["polmav"] = "society_police"
    ,["policeold1"] = "society_police"
    ,["policeold2"] = "society_police"
    ,["policet"] = "society_police"
    ,["pranger"] = "society_police"
    ,["riot"] = "society_police"
    ,["riot2"] = "society_police"
    ,["sheriff"] = "society_police"
    ,["sheriff2"] = "society_police"
}


for k,v in pairs(Vehicle.Models) do 
    Vehicle.Models[GetHashKey(k)] = v
end   
for k,v in pairs(Vehicle.ModelsSociety) do 
    Vehicle.ModelsSociety[GetHashKey(k)] = v
end    

