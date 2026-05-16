# tg-door-data

Standalone Trembita Games door state data resource for RedM/RDR2 servers.

This resource is intended to manage door definitions and default door states for world consistency.

---

## Purpose

`tg-door-data` exists to provide a small data-driven door state layer for RedM/RDR2 servers.

The initial motivation is to investigate and gradually fix issues such as:

- doors that exist but cannot be opened
- doors that need a known default state
- doors that need explicit registration in the door system
- doors that need consistent startup state after reconnect or restart

This resource should stay framework-agnostic.

It must not depend on external gameplay frameworks, database layers, inventory systems, character systems, economy systems or roleplay systems.

---

## Repository Location

```txt
resources/[standalone]/tg-door-data/
```

This resource is placed under `[standalone]` because it should be usable independently from any custom server framework or core layer.

The `tg-` prefix identifies Trembita Games ownership.

---

## Resource Structure

```txt
tg-door-data/
├── README.md
├── fxmanifest.lua
├── config.lua
├── client/
│   └── main.lua
└── data/
    └── doors.lua
```

This structure follows the same baseline layout used by other standalone resources in this repository.

---

## Current Scope

Current scope:

- standalone resource skeleton
- client startup logging
- empty door data structure
- door registration pipeline
- door state application pipeline
- no production door entries yet
- no gameplay interaction logic

This first version is intentionally safe and minimal.

---

## Files

### `fxmanifest.lua`

Resource manifest.

Defines RedM/RDR3 compatibility and loads:

```txt
config.lua
data/doors.lua
client/main.lua
```

### `config.lua`

Runtime configuration.

Current options:

```lua
Config.Debug = true
Config.EnableDoorRegistration = true
Config.EnableDoorStates = true
Config.StartupDelayMs = 1000
Config.PhysicsTimeoutMs = 5000
Config.PhysicsCheckIntervalMs = 100
Config.SkeletonMode = true
```

### `data/doors.lua`

Future door definitions and desired default states.

Currently empty.

### `client/main.lua`

Client runtime logic.

Registers configured doors and applies configured door states.

---

## Installation

Add the resource to your server resources directory:

```txt
resources/[standalone]/tg-door-data/
```

Then add it to the Trembita resource startup configuration:

```cfg
ensure tg-door-data
```

Recommended position:

```cfg
ensure tg-static-data
ensure tg-door-data
```

---

## Expected Logs

When the resource starts with the default empty skeleton data, client logs should include:

```txt
[tg-door-data] Starting door data initialization.
[tg-door-data] Skeleton mode is enabled. No production door entries are included yet.
[tg-door-data] Configured door entries: 0.
[tg-door-data] Door data initialization completed.
```

---

## Door Data Format

Future door entries should use this format:

```lua
TGDoorData.Doors = {
    {
        name = 'Example door',
        doorHash = 'TG_EXAMPLE_DOOR_01',
        modelHash = 'example_door_model',
        coords = vector3(0.0, 0.0, 0.0),
        state = TGDoorData.States.unlocked,
        waitForPhysics = true,
        notes = 'Example placeholder.'
    }
}
```

Rules:

- every entry must have a clear `name`
- every entry must have a unique `doorHash`
- every entry must have a verified `modelHash`
- every entry must have verified coordinates
- every entry must define a desired `state`
- every added entry must be tested in-game

---

## Door States

Common states:

```txt
0 = unlocked
1 = locked
```

The initial use case should normally use:

```lua
state = TGDoorData.States.unlocked
```

for doors that should be openable.

Other state values are available in `data/doors.lua`, but should be used only after testing.

---

## How to Add a New Door Entry

1. Reproduce the issue in-game.
2. Record the exact location and coordinates.
3. Identify the door object model.
4. Decide the desired default door state.
5. Add the entry to `data/doors.lua`.
6. Start the server and connect with a client.
7. Verify the door before and after the change.
8. Restart the resource and verify the door again.
9. Restart the server and verify the door again.

---

## Development Rules

Do:

- keep the resource standalone
- keep configuration readable
- document every added door entry
- test changes in-game
- record coordinates for every verified door
- keep changes original to Trembita Games

Do not:

- add gameplay permissions
- add database dependencies
- add inventory, character or economy logic
- add UI logic
- add key or access systems
- mix door state corrections with unrelated gameplay systems

---

## Testing Checklist

For every new door entry, test:

- server startup
- client connection
- resource startup logs
- door location before change
- door location after change
- reconnect behavior
- resource restart behavior
- server restart behavior
- behavior with at least two players when possible

Record:

```txt
Location:
Coordinates:
Issue:
Expected behavior:
Actual behavior before fix:
Actual behavior after fix:
Door entry:
Notes:
```

---

## Status

Initial skeleton resource.

No production-ready door entries are included yet.
