# Known Issues

This document tracks known RedM/RDR2 server-side or world-related issues observed during testing.

---

## Missing Buildings

Some buildings may appear partially loaded or disappear in a minimal RedM/RDR2 server setup.

Status:

```txt
Under investigation
```

Notes:

- may be related to world streaming
- may be related to missing map resources
- may be related to interior/IPL/YMAP loading
- may differ between locations

---

## Missing Glass

Some windows or glass surfaces may be missing.

Status:

```txt
Under investigation
```

Notes:

- may be related to map asset loading
- may be location-specific
- should be tested across multiple towns and buildings

---

## Missing Collisions

Some structures may have missing or incomplete collision.

Status:

```txt
Under investigation
```

Symptoms:

```txt
- walking through buildings
- walking through walls
- missing physical barriers
- partially loaded structures
```

---

## Partially Loaded Locations

Some towns, interiors or world areas may not behave exactly like Red Dead Redemption 2 single-player.

Status:

```txt
Under investigation
```

Potential causes:

- RedM world streaming differences
- missing baseline resources
- missing interior loading
- server artifact differences
- client cache/state issues

---

## Client-Side Issues

Some issues may be caused by the RedM client, Rockstar Launcher, GPU settings or local cache.

Examples:

- crash on exit
- Vulkan memory errors
- Rockstar entitlement errors

These should be documented separately from server-side resource issues.