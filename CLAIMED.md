# CLAIMED — File Ownership Tracking

Single source of truth for who is working on what.

**Statuses:** `unclaimed` / `in-progress` / `complete`

To claim a file: edit this table, set your name/handle and status to `in-progress`,
commit to your branch. See `CONTRIBUTING.md` for full protocol.

---

## AI — Entity Behaviour and NPC Logic

| File | NON_MATCHING | Contributor | Status | Notes |
|------|-------------|-------------|--------|-------|
| overlay_gameplay/outside/884C0.c | 19 | - | unclaimed | Alien instance management, animation state, group behaviour |
| overlay_gameplay/outside/B2CB0.c | 10 | - | unclaimed | Alien animation/vocalisation, damage resistance, attack velocity |
| overlay_gameplay/outside/B8290.c | 5 | - | unclaimed | Alien state flags, group commands, collision detection |

## UI/Frontend — Menus, HUD, Cutscenes

| File | NON_MATCHING | Contributor | Status | Notes |
|------|-------------|-------------|--------|-------|
| overlay_gameplay/frontend/40720.c | 18 | - | unclaimed | File select, mission data, inventory, HUD render, save screen |
| overlay_gameplay/inside/173B60.c | 4 | - | unclaimed | Pause menu rendering, cutscene display, button polling |
| overlay_gameplay/outside/13DA70.c | 5 | - | unclaimed | End-of-level scoring display, string formatting, colour effects |
| overlay_gameplay/outside/AAA70.c | 9 | - | unclaimed | HUD (health bars, scanner, ghost target reticle), timing debug |
| overlay_gameplay/outside/cheats.c | 1 | - | unclaimed | Cheat code implementations — mostly matched already |
| overlay_gameplay/outside/F6A50.c | 2 | - | unclaimed | Debug camera control, weapon aiming |
| overlay_gameplay/outside/F9230.c | 6 | - | unclaimed | Animation sequencing, player cutscenes, swimming state, weapon model |
| overlay_gameplay/outside/missions.c | 3 | - | unclaimed | Mission data parsing, bytecode interpreter, condition evaluation |

## World — Environment, Buildings, Map, Triggers

| File | NON_MATCHING | Contributor | Status | Notes |
|------|-------------|-------------|--------|-------|
| overlay_gameplay/frontend/52690.c | 15 | - | unclaimed | Camera/matrix, 3D vector math, particle/effect allocation |
| overlay_gameplay/inside/158330.c | 12 | - | unclaimed | Indoor building logic, interior rendering, collision grid animation |
| overlay_gameplay/inside/1648A0.c | 8 | - | unclaimed | Vehicle control, input handling, animation state |
| overlay_gameplay/inside/167C90.c | 8 | - | unclaimed | Camera control, cutscene management, compass/radar state |
| overlay_gameplay/outside/1416E0.c | 12 | - | unclaimed | Camera systems (Adam, vehicle, scripted), target tracking |
| overlay_gameplay/outside/857E0.c | 11 | - | unclaimed | Tree animation, collision grid queries, alien pathfinding |
| overlay_gameplay/outside/A49A0.c | 13 | - | unclaimed | Map rendering, minimap overlay, 3D vehicle display |
| overlay_gameplay/outside/BF9C0.c | 10 | - | unclaimed | Collision/visibility bitmaps, world tile flags, light buffers |
| overlay_gameplay/outside/buildings.c | 11 | - | unclaimed | Building perspective/projection, door mechanics, frustum culling |
| overlay_gameplay/outside/trigger.c | 6 | - | unclaimed | Trigger system, alien wave spawning, world event scheduling |

## Core/Engine — Low-Level Systems and Math

| File | NON_MATCHING | Contributor | Status | Notes |
|------|-------------|-------------|--------|-------|
| core/1000.c | 11 | - | unclaimed | Boot, rumble pak, controller I/O, save/load, random, utilities |
| overlay_gameplay/outside/7F220.c | 7 | - | unclaimed | Gameplay init, timer, rendering dispatch, level state setup |
| overlay_gameplay/inside/16AF30.c | 19 | - | unclaimed | Particle pool management, object slot allocation, collision geometry |
| overlay_gameplay/outside/CFE30.c | 28 | - | unclaimed | Vector math library — fully contaminated (28/28 NON_MATCHING) |

## Level — Per-Zone Event Logic

| File | NON_MATCHING | Contributor | Status | Notes |
|------|-------------|-------------|--------|-------|
| overlay_level/greece/18D7E0.c | 3+ | Harvester | in-progress | Greece events: building destruction, cutscene triggers, beacon launch |
