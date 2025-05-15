Config = {}
Config.Framework = "qb" --Do not touch this, I changed the qb calls to work for QBX.

Config.AmbulancePerm = "ambulance"
Config.PolicePerm = "police"
Config.UnknownName = "Unknown"

Config.SetWaypoint = "Z"

Config.DriveByHeader = "Drive By Shooting"
Config.ShotAlert = {
    header = "Gun Shot",
    event = "Weapon Model",
    callsign = "25",
    forwho = "police",
    blips = {
        blipText = "Gun Shot",
        blipSprite = 153,
        blipColour = 71,
        blipScale = 0.7,
        blipTime = 2,
    }
}
Config.Drugs = {
    header = "Drug Dealer Spotted", // header
    event = "A narcotics deal is in progress!", // footer
    callsign = "38D", // callsign code 
    forwho = {"police", "sheriff"}, //
    blips = {
        blipText = "Store Robbery",  // Blip Name
        blipSprite = 153, // Blip Icon
        blipColour = 71, // Blip Colour
        blipScale = 0.7, // Blip Scale
        blipTime = 2, // Blip Time
    }
}

Config.CarJackingAlert = {
    header = "Car Jacking",
    event = "",
    callsign = "36C",
    forwho = "police",
    blips = {
        blipText = "Car Jacking",
        blipSprite = 153,
        blipColour = 71,
        blipScale = 0.7,
        blipTime = 2,
    }
}


Config.CivDown = {
    header = "Person Down",
    event = "",
    callsign = "2L",
    forwho = {"police", "ems"},
    blips = {
        blipText = "Shutdown",
        blipSprite = 153,
        blipColour = 71,
        blipScale = 0.7,
        blipTime = 2,
    }
}
