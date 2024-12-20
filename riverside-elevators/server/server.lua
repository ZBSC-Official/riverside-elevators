-- riverside-elevators server.lua

RegisterServerEvent('riverside-elevators:logFloorAccess', function(playerName, floorLabel)
    -- Log floor access for debugging or administrative purposes
    local src = source
    local playerName = GetPlayerName(src)
    print(("[Riverside Elevators] %s accessed floor: %s"):format(playerName, floorLabel))
end)

-- Debug function to ensure the configuration is loaded correctly
CreateThread(function()
    Wait(1000) -- Delay to ensure other resources are loaded
    if Config and Config.Elevators then
        print("[Riverside Elevators] Configuration loaded successfully.")
    else
        print("[Riverside Elevators] Error: Configuration not loaded.")
    end
end)
