
# Neon Job & Gang Chat for QB-Core

This script enables job and gang-based chat channels in a **QB-Core** server, allowing players to communicate within their job or gang. It also supports customizable notifications using **ox_lib** and allows job and gang labels to be color-coded.

## Features

- `/jobc` for job-based chat
- `/gangc` for gang-based chat
- Configurable job and gang chat colors
- Restrict certain jobs or gangs from using chat
- Custom notifications using **ox_lib**
- Configurable notification position

## Installation

1. **Download and Install** the script into your `resources` folder.
2. Add the following to your `server.cfg`:

   ```bash
   ensure neon_jobchat
   ```

3. **Configure** the script by editing the `config.lua` file to set job and gang colors, chat restrictions, and notification positions.

## Configuration

### `config.lua`

- **Job and Gang Colors**: Set the hex color for job and gang chat labels.
- **Restricted Jobs and Gangs**: Specify which jobs or gangs can't use chat.
- **Notification Position**: Customize where the **ox_lib** notifications appear (top, bottom, etc.).

```lua
Config.Jobs = {
    ['police'] = '#00aaff',
    ['ambulance'] = '#ff0000',
}

Config.Gangs = {
    ['ballas'] = '#a42a2a',
    ['vagos'] = '#ffd700',
}

Config.NoChatJobs = {
    ['unemployed'] = true,
}

Config.NoChatGangs = {
    ['none'] = true,
}

Config.NotifyPosition = 'top' -- Available: 'top', 'top-left', 'top-right', 'bottom', 'bottom-left', 'bottom-right'
```

## Commands

- `/jobc`: Send a message to everyone in your current job.
- `/gangc`: Send a message to everyone in your current gang.

## Dependencies

- **QB-Core Framework**
- **ox_lib** (Ensure it is installed and running)

## License

This script is open for personal or server use. Feel free to modify it to suit your needs.
