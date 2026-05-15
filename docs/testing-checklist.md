# Testing Checklist

Checklist for validating RedM/RDR2 world behavior on a minimal server.

---

## Test Session Information

Record before testing:

```txt
Date:
Tester:
Server artifact build:
RedM client version:
Number of players:
Location:
Resource list:
```

---

## Basic Startup

- [ ] Server starts successfully
- [ ] License key authentication succeeds
- [ ] Default Cfx.re resources start
- [ ] RedM client connects locally
- [ ] Player spawns into the world
- [ ] No critical server console errors

---

## Multiplayer Validation

- [ ] Second player can connect
- [ ] Players can see each other
- [ ] Player movement is synchronized
- [ ] Basic chat works
- [ ] No immediate disconnects
- [ ] No severe server hitches during connection

---

## World Visual Checks

Test multiple locations.

Suggested locations:

- [ ] Valentine
- [ ] Saint Denis
- [ ] Blackwater
- [ ] Rhodes
- [ ] Armadillo
- [ ] Strawberry
- [ ] Annesburg

For each location, check:

- [ ] buildings are visible
- [ ] walls are visible
- [ ] windows/glass are visible where expected
- [ ] large props are visible
- [ ] interiors behave as expected
- [ ] no obvious missing world chunks

---

## Collision Checks

For each tested location:

- [ ] player cannot walk through visible walls
- [ ] player cannot walk through major buildings
- [ ] doors and entrances behave consistently
- [ ] stairs/floors have collision
- [ ] large objects have collision

---

## Reconnect Checks

- [ ] player disconnects and reconnects
- [ ] same location loads consistently
- [ ] buildings remain visible after reconnect
- [ ] collisions remain consistent after reconnect

---

## Server Restart Checks

- [ ] restart the server
- [ ] reconnect to the same location
- [ ] verify buildings load again
- [ ] verify collisions again
- [ ] compare behavior with previous session

---

## Notes Template

```txt
Location:
Issue:
Steps to reproduce:
Expected behavior:
Actual behavior:
Players affected:
Screenshots/video:
Server logs:
Client notes:
```