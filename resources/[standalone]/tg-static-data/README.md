# tg-static-data

Standalone Trembita Games static world data resource for RedM/RDR2 servers.

This resource contains initial static interior and IMAP data used to keep the world state consistent across clients. It includes static town/world entries plus moonshine shell and interior entries. It has no external gameplay framework dependency and should stay usable as a standalone resource.

## Purpose

`tg-static-data` is used for static world consistency data, such as:

- interior entity sets
- missing or alternate building parts
- windows, curtains, furniture, and shop props
- requested IMAP world chunks
- removed IMAP world chunks that conflict with the desired world state
- moonshine shell/interior static data represented as plain data entries

The resource should stay small and data-driven. Runtime code applies the data, while actual static entries live in the `data/` directory.

## Structure

```txt
tg-static-data/
├── README.md
├── NOTICE.md
├── fxmanifest.lua
├── config.lua
├── client/
│   └── main.lua
└── data/
    ├── interiors.lua
    └── imaps.lua
```

## Files

`data/interiors.lua` contains interior entity set entries. These entries tell the client which named entity sets should be activated for a specific interior ID.

`data/imaps.lua` contains IMAP request and remove entries. IMAPs are map or world chunks that can change static buildings, construction stages, terrain patches, props, and other world variants.

`client/main.lua` is a small data-driven runtime. It waits for the configured startup delay, removes configured IMAPs, requests configured IMAPs, activates configured interior entity sets, and logs summary counts when debug logging is enabled.

No interaction, teleport, prompt, or blip logic is included. This resource only applies static world data.

`config.lua` controls debug logging, feature toggles, startup delay, and skeleton mode.

## Configuration

```lua
Config.Debug = true
Config.ResourceName = 'tg-static-data'
Config.EnableInteriors = true
Config.EnableImaps = true
Config.StartupDelayMs = 1000
Config.SkeletonMode = false
```

Set `Config.Debug` to `false` after the imported data has been tested and startup logs are no longer needed.

## Adding Data

Add interior entries to `data/interiors.lua`:

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

Add IMAP entries to `data/imaps.lua`:

```lua
TGStaticData.RequestImaps = {
    {
        name = 'Valentine completed green building',
        imap = 903666582,
        notes = 'Imported from static data reference.'
    }
}

TGStaticData.RemoveImaps = {
    {
        name = 'Valentine sheriff office crumbled wall parts',
        imap = 774477221,
        notes = 'Imported from static data reference.'
    }
}
```

Every added entry should be tested in-game. IMAP combinations can conflict with each other, so verify the target location before and after each change.

## Runtime Behavior

On client startup, the resource:

1. waits `Config.StartupDelayMs`
2. applies interior entity sets from `TGStaticData.Interiors`
3. removes IMAPs from `TGStaticData.RemoveImaps`
4. requests IMAPs from `TGStaticData.RequestImaps`
5. logs applied counts when `Config.Debug` is enabled

The runtime does not include database logic, server-side scripts, inventory logic, economy logic, or gameplay systems.

## Testing Checklist

For each data change, verify:

- server startup
- client connection
- resource startup logs
- target location before the change
- target location after the change
- reconnect behavior
- server restart behavior

Record the location, coordinates, expected result, actual result, and the exact data entry that was changed.
