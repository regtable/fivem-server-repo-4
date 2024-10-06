
-- Admin Menu: Client-side Lua script

RegisterCommand('openAdminMenu', function()
    -- Set focus on the NUI (UI)
    SetNuiFocus(true, true)
    SendNUIMessage({ action = 'openAdminMenu' })
end)

-- Close the menu
RegisterNUICallback('closeMenu', function(data, cb)
    SetNuiFocus(false, false)
    cb('ok')
end)

-- Example of receiving data from UI
RegisterNUICallback('submitAdminAction', function(data, cb)
    -- Handle the action (e.g., kick a player, change weather)
    print('Admin Action: ' .. data.action)

    -- You can add commands to trigger server-side actions here
    TriggerServerEvent('adminmenu:executeAdminCommand', data)

    cb('ok')
end)
