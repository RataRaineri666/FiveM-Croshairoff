function ManageReticle()
    local ped = GetPlayerPed ( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then
        if ( GetFollowPedCamViewMode() ~= 4 and IsPlayerFreeAiming() ) then 
            HideHudComponentThisFrame( 14 )
        end
        Citizen.Wait( 0 )
    end 
    HideHudComponentThisFrame( 14 )
end 

Citizen.CreateThread( function()
    while true do 
        ManageReticle()
    end 
end )
