# tg-static-data

Standalone Trembita Games static world data resource for RedM/RDR2 servers.

This resource is intended to manage static world consistency data, including missing static objects, windows, buildings, interiors, props and IMAP-based world corrections.

---

## Purpose

`tg-static-data` exists to provide an original Trembita Games static data layer for RedM/RDR2 servers.

The initial motivation is to investigate and gradually fix issues observed on minimal RedM servers, such as:

- missing windows
- missing building parts
- disappearing buildings
- missing static props
- missing or incomplete interiors
- inconsistent static world state
- location-specific world loading differences

This resource should stay framework-agnostic.

It must not depend on external gameplay frameworks, database layers, inventory systems, character systems, economy systems or roleplay systems.

---

## Repository Location

```txt
resources/[standalone]/tg-static-data/
```

This resource is placed under `[standalone]` because it should be usable independently from any custom server framework or core layer.

The `tg-` prefix identifies Trembita Games ownership.

---

## Resource Structure

```txt
tg-static-data/
├── README.md
├── fxmanifest.lua
├── config.lua
├── client/
│   └── main.lua
└── data/
    ├── interiors.lua
    └── imaps.lua
```

This structure is intentionally kept simple and repeatable.

Future standalone resources should follow a similar layout when possible:

```txt
resource-name/
├── README.md
├── fxmanifest.lua
├── config.lua
├── client/
└── data/
```

---

## Current Scope

Current scope:

- standalone resource skeleton
- client startup logging
- empty static data structures
- interior entity set activation pipeline
- IMAP request/remove pipeline
- no production static fixes yet
- no third-party code copied into this repository

This first version is intentionally safe and minimal.

---

## Files

### `fxmanifest.lua`

Resource manifest.

Defines RedM/RDR3 compatibility and loads:

```txt
config.lua
data/interiors.lua
data/imaps.lua
client/main.lua
```

### `config.lua`

Runtime configuration.

Current options:

```lua
Config.Debug = true
Config.EnableInteriors = true
Config.EnableImaps = true
Config.StartupDelayMs = 1000
Config.SkeletonMode = true
```

### `data/interiors.lua`

Future interior entity set data.

Currently empty.

### `data/imaps.lua`

Future IMAP request/remove data.

Currently empty.

### `client/main.lua`

Client runtime logic.

Applies configured interior and IMAP entries.

---

## Installation

Add the resource to your server resources directory:

```txt
resources/[standalone]/tg-static-data/
```

Then add it to `server.cfg`:

```cfg
ensure tg-static-data
```

Recommended position:

```cfg
ensure mapmanager
ensure chat
ensure spawnmanager
ensure sessionmanager-rdr3
ensure basic-gamemode
ensure hardcap
ensure rconlog

ensure tg-static-data
```

---

## Expected Logs

When the resource starts with the default empty skeleton data, client logs should include:

```txt
[tg-static-data] Starting static data initialization.
[tg-static-data] Skeleton mode is enabled. No production static world fixes are included yet.
[tg-static-data] Applied interior entries: 0.
[tg-static-data] Removed IMAP entries: 0.
[tg-static-data] Requested IMAP entries: 0.
[tg-static-data] Static data initialization completed.
```

---

## Interior Data Format

Future interior entries should use this format:

```lua
TGStaticData.Interiors = {
    {
        name = 'Valentine bank',
        interiorId = 12290,
        entitySets = {
            'val_bank_front_windows',
            'val_bank_int_curtainsopen'
        }
    }
}
```

Rules:

- every entry must have a clear `name`
- every entry must have a verified `interiorId`
- every entity set must be tested in-game
- every added entry must be documented

---

## IMAP Data Format

Future IMAP request entries should use this format:

```lua
TGStaticData.RequestImaps = {
    {
        name = 'Example requested IMAP',
        imap = 123456789,
        notes = 'Short explanation of what this enables.'
    }
}
```

Future IMAP remove entries should use this format:

```lua
TGStaticData.RemoveImaps = {
    {
        name = 'Example removed IMAP',
        imap = -123456789,
        notes = 'Short explanation of what this removes.'
    }
}
```

Rules:

- every entry must have a clear `name`
- every entry must have a verified `imap`
- every entry should include notes when the effect is known
- every added entry must be tested in-game

---

## How to Add a New Static Data Entry

1. Reproduce the issue in-game.
2. Record the exact location and coordinates.
3. Identify the needed interior entity set or IMAP.
4. Add the entry to the correct data file.
5. Start the server and connect with a client.
6. Verify the target location before and after the change.
7. Document the result.

Use `data/interiors.lua` for interior entity sets.

Use `data/imaps.lua` for IMAP request/remove operations.

---

## Development Rules

Do:

- keep the resource standalone
- keep configuration readable
- document every added static data entry
- test changes in-game
- record coordinates for every verified fix
- keep changes original to Trembita Games

Do not:

- copy third-party resource code without license review
- silently add external framework dependencies
- add database dependencies
- add gameplay or roleplay logic
- mix static world corrections with economy, inventory or character systems

---

## Testing Checklist

For every new static data entry, test:

- server startup
- client connection
- resource startup logs
- target location before change
- target location after change
- reconnect behavior
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
Resource entry:
Notes:
```

---

## Status

Initial skeleton resource.

No production-ready static world fixes are included yet.
