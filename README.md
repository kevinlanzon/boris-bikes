#Boris Bikes (without tutorial)

##CRC

#Bike
- bike can be broken
- bike shouldn't be broken when created
- bike can be fixed

#DockingStation
- should accept a bike
- should release a bike when the bike is not broken
- should know when the station is full
- should not accept a bike when the station is full
- should give us a list of available bikes

#Garage
- should dock broken bikes from the van
- should fix broken bikes
- should release fixed bikes to the van

#Van
- Van can get the broken bikes from the station.
- moving broken bikes from the stations to the garage.
- Once they are fixed, the van moves them back to the stations.

#User