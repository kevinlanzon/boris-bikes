Domain Model - Boris Bikes

We are building a system that manages bikes that can be rented by users from docking stations and returned there at the end of the rental. The bikes can break while being used, in which case they will not be available for rental after they are returned. There is a garage that can fix broken bikes and a van that is used to move broken bikes from the stations to the garage. It can also be used to take fixed bikes back to the station(s). The van, the station and the garage have fixed capabity, so they cannot take more bikes than they can hold.

Possible Classes
  -Bikes
  -Users
  -Docking Stations
  -Rental
  -Garage
  -Van
  -Location

Possible Methods
  -Rented
  -Returned
  -Break
  -Used
  -Fix
  -Move
  -Take
  -Hold