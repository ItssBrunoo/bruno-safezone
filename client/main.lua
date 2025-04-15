local isInSafeZone = false
local currentZone = nil

function ShowNotification(text)
    SendNUIMessage({
        type = "toggleSafeZone",
        display = true,
        zoneName = text
    })
end

function HideNotification()
    SendNUIMessage({
        type = "toggleSafeZone",
        display = false
    })
end

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local wasInSafeZone = isInSafeZone
        isInSafeZone = false

        for _, zone in pairs(Config.SafeZones) do
            local distance = #(playerCoords - zone.coords)
            if distance < zone.radius then
                isInSafeZone = true
                currentZone = zone.name
                break
            end
        end

        if isInSafeZone then
            if not wasInSafeZone then
                ShowNotification(currentZone)
            end
            
            -- Apply restrictions based on config
            if Config.Restrictions.disableFiring then
                DisablePlayerFiring(playerPed, true)
            end
            
            if Config.Restrictions.removeWeapons then
                SetCurrentPedWeapon(playerPed, `WEAPON_UNARMED`, true)
            end
            
            if Config.Restrictions.disableControls.enabled then
                for _, control in ipairs(Config.Restrictions.disableControls.controls) do
                    if control.disabled then
                        DisableControlAction(0, control.id, true)
                    end
                end
            end
            
        elseif wasInSafeZone then
            HideNotification()
        end

        Wait(isInSafeZone and 0 or 1000)
    end
end)

-- Cleanup on resource stop
AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
end) 
