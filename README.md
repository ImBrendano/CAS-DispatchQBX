<a href='https://ko-fi.com/G2G81E5J4O' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://storage.ko-fi.com/cdn/kofi4.png?v=6' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a> Thanks :>
https://ko-fi.com/imbrendano

# CAS-DispatchQBX

This resource is originally developed by: https://github.com/mb-later
Thought it was awesome but it didn't have support for QBox Framework so I spent a few hours modifying the resource to make it work for QBX. Figured it might be useful for others!

Usage;

Some Infos about script;


Press "Z" For waypoint.


This script is working with E̶S̶X̶ ̶A̶n̶d̶ ̶Q̶B̶C̶o̶r̶e̶ QBX / Qbox Framework.
I'd suggest not messing with the framework calls or changing the "qb" under ```config.framework``` in ```cfg.lua```. I forgot what I did, but it works so. LMAO


Resmon Values - None (0.00ms)


Preview

![image](https://github.com/mb-later/CAS-Dispatch/assets/68826839/88bed940-ed7d-4c5c-8914-c8be561ee0cd)


```lua

GetStreetName = function(coords)
    local hashKey = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    local streetName = GetStreetNameFromHashKey(hashKey)
    return streetName
end


CAS = {
    DispatchInfo = {
        header = "POLICE ALERT", -- Dispatch Header
        event = "Fleeca Bank Robbery", -- Dispatch footer
        callsign = "Unknown", -- Event Code
        forwho = "ambulance", -- For who? police or ems or law etc.
        blips = {
            blipText = "Fleeca Bank Robbery", -- Blip Name
            blipSprite = 153, -- Blip icon
            blipColour = 71, -- Blip colour
            blipScale = 0.7, -- Blip scale
            blipTime = 2, -- minute
        }
    }
}

RegisterCommand("sign14" ,function() -- example
    local coords = GetEntityCoords(PlayerPedId()) 
    TriggerServerEvent("cas-sendDispatch",coords, CAS.DispatchInfo, GetStreetName(coords))
end)
```
