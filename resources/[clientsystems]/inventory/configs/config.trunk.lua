Config.TrunkEnabled = true -- Toggle Trunk Plugin
Config.TrunkKey = "k" -- default trunk open key (users can change in their settings) | FiveM Keys
Config.TrunkSave = true -- must have a owned_vehicles table in your database | default: false
Config.TrunkTimeout = 500 -- amount of time it takes for the Trunk to load | default: 1000 (ms)
Config.BlacklistedVehicleTypes = {13, 8} -- Cycles and Motorcycles | default: {13, 8}
Config.TrunkIndividualWeights = {
  ["adder"] = 10
}
Config.TrunkClassWeights = {
  [0] = 150, --Compact
  [1] = 200, --Sedan
  [2] = 500, --SUV
  [3] = 200, --Coupes
  [4] = 300, --Muscle
  [5] = 200, --Sports Classics
  [6] = 200, --Sports
  [7] = 150, --Super
  [8] = 0, --Motorcycles
  [9] = 500, --Off-road
  [10] = 1000, --Industrial
  [11] = 800, --Utility
  [12] = 800, --Vans
  [13] = 0, --Cycles
  [14] = 300, --Boats
  [15] = 0, --Helicopters
  [16] = 0, --Planes
  [17] = 300, --Service
  [18] = 300, --Emergency
  [19] = 3000, --Military
  [20] = 300, --Commercial
  [21] = 0 --Trains
}