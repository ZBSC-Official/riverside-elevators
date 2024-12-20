local function createElevator(elevator)
    for _, floor in ipairs(elevator.Floors) do
        exports['qb-target']:AddBoxZone(floor.Label, floor.Coords, 1.0, 1.0, {
            name = floor.Label,
            heading = 0,
            debugPoly = false,
            minZ = floor.Coords.z - 1.0,
            maxZ = floor.Coords.z + 1.0,
        }, {
            options = {
                {
                    type = "client",
                    event = "riverside-elevators:goToFloor",
                    icon = "fas fa-arrow-up",
                    label = "Go to " .. floor.Label,
                    args = floor.Coords
                }
            },
            distance = 2.0
        })
    end
end

RegisterNetEvent('riverside-elevators:goToFloor', function(coords)
    local ped = PlayerPedId()
    DoScreenFadeOut(1000)
    Wait(1000)
    SetEntityCoords(ped, coords.x, coords.y, coords.z)
    Wait(1000)
    DoScreenFadeIn(1000)
end)

CreateThread(function()
    for _, elevator in ipairs(Config.Elevators) do
        createElevator(elevator)
    end
end)