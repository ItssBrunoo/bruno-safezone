# bruno-safezone

# FiveM SafeZone System

A comprehensive SafeZone system for FiveM servers that allows server administrators to create and manage safe areas where player interactions can be controlled and restricted.

## Features

- 🛡️ Configurable SafeZones with custom locations and radius
- 🎮 Granular control over player actions within SafeZones
- 🔫 Customizable weapon restrictions
- 🎯 Flexible control system for various player actions
- 📍 Visual notifications when entering/leaving SafeZones
- ⚡ Optimized performance
- 🔧 Easy configuration

## Dependencies

- ESX Framework (`es_extended`)

## Installation

1. Download the latest release
2. Extract the `bruno-safe` folder to your server's `resources` directory
3. Add `ensure bruno-safe` to your `server.cfg`
4. Configure the `config.lua` file to your preferences
5. Restart your server

## Configuration

The script can be configured through the `config.lua` file. Here are the main configuration options:

### SafeZones
```lua
Config.SafeZones = {
    {
        name = "City Hall",
        coords = vector3(-544.91, -204.02, 37.22),
        radius = 50.0
    },
    -- Add more SafeZones as needed
}
```

### Restrictions
```lua
Config.Restrictions = {
    removeWeapons = false,      -- Remove weapons when entering safezone
    allowWeaponHold = true,     -- Allow holding weapons but not shooting
    disableFiring = true,       -- Prevent weapon firing
    disableAiming = false,      -- Prevent aiming
    disableWeaponWheel = false, -- Prevent weapon wheel access
    -- Additional control restrictions available
}
```

## Usage

1. Configure your SafeZones in the `config.lua` file
2. Set up the desired restrictions for each SafeZone
3. Players will automatically receive notifications when entering/leaving SafeZones
4. The configured restrictions will be automatically applied within the SafeZone areas

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Created by Its_Bruno

## Support

For support, please open an issue on the GitHub repository or contact the author through FiveM forums.

## Version

Current Version: 1.0.0 
