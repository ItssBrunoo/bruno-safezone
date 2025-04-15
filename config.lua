Config = {}

Config.SafeZones = {
    {
        name = "City Hall",
        coords = vector3(-544.91, -204.02, 37.22),
        radius = 50.0
    },
    {
        name = "Hospital",
        coords = vector3(297.44, -584.14, 43.26),
        radius = 40.0
    }
}

-- SafeZone Restrictions
Config.Restrictions = {
    removeWeapons = false,     -- If true, removes weapons when entering safezone
    allowWeaponHold = true,    -- If true, allows holding weapons but not shooting
    disableFiring = true,      -- If true, prevents weapon firing
    disableAiming = false,     -- If true, prevents aiming
    disableWeaponWheel = false, -- If true, prevents weapon wheel access
    disableControls = {
        enabled = true,        -- Master switch for control restrictions
        controls = {
            {id = 24, name = "Attack", disabled = true},
            {id = 25, name = "Aim", disabled = false},
            {id = 37, name = "Weapon Wheel", disabled = false},
            {id = 157, name = "Weapon 1", disabled = false},
            {id = 158, name = "Weapon 2", disabled = false},
            {id = 160, name = "Weapon 3", disabled = false},
            {id = 164, name = "Weapon 4", disabled = false},
            {id = 165, name = "Weapon 5", disabled = false},
            {id = 159, name = "Weapon 6", disabled = false},
            {id = 161, name = "Weapon 7", disabled = false},
            {id = 162, name = "Weapon 8", disabled = false},
            {id = 163, name = "Weapon 9", disabled = false}
        }
    }
} 