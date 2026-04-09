# TODO - Issues to Address

## Critical

### 1. Race Conditions in Concurrent Futures
**Files:** `handlers.dart:129-132`, `handlers.dart:150-153`, `handlers.dart:300-317`

Using `Future.wait(..., eagerError: false)` without synchronization causes race conditions when multiple players modify the same lobby/game simultaneously.

**Fix:** Use sequential awaits:
```dart
await playerService.addPlayer(newPlayer);
await lobbyService.updatePlayer(newPlayer.roomCode, newPlayer);
```

---

### 2. Unhandled Game Actions Throw Errors
**Files:** `handlers.dart:193-243`

These actions throw `UnimplementedError()`:
- `GameSetCard`
- `GameCheckCard`
- `GameSwapWithPlayer`
- `GameSwapWithRiver`
- `GameSwapOtherPlayers`
- `GameAssumeForm`

**Fix:** Implement these actions or return graceful error responses instead of throwing.

---

### 3. No WebSocket Connection Handling
**Files:** `client_provider.dart:22-28`

- Hardcoded `ws://localhost:8080` - no config for different environments
- No reconnection logic on disconnect
- No connection state tracking

**Fix:** Add connection state enum, auto-reconnect with exponential backoff, make URL configurable.

---

## High

### 4. `SubscriptionManager` Not Injected
**Files:** `handlers.dart:27-33`

`SubscriptionManager()` is instantiated inline, not via Riverpod. Won't work with hot reload and cannot be tested independently.

**Fix:** Make `SubscriptionManager` a proper Riverpod provider.

---

### 5. Duplicate Nickname Check is Incomplete
**Files:** `handlers.dart:355-360` vs `handlers.dart:121-126`

Two places check for duplicate nicknames, but neither is atomic. Race condition can allow duplicates.

**Fix:** Add mutex/lock in `MockLobbyService` for nickname uniqueness.

---

### 6. No Input Validation
**Files:** `handlers.dart:72-82`, `handlers.dart:350-390`

- No length limits on nickname
- No sanitization of room codes
- No check for max players per lobby

**Fix:** Add validation in action handlers.

---

## Medium

### 7. Logging Uses `print()` Instead of Proper Logger
**Files:** `handlers.dart:36`, `client_provider.dart:60,87,116`

**Fix:** Replace with proper logger calls.

---

### 8. No Rate Limiting
**Files:** All action handlers in `handlers.dart`

No protection against spam/abuse.

**Fix:** Implement rate limiting per socket.

---

### 9. `lobbyState` Race in `_addPlayerToLobby`
**Files:** `handlers.dart:355-360`

Checks nickname but not if lobby is full or game already started.

**Fix:** Add lobby state checks before allowing join.

---

### 10. No Error Handling in Client Provider
**Files:** `client_provider.dart:23-25`

WebSocket stream errors are not caught or handled.

**Fix:** Add error handling in stream listener.

---

### 11. Game State Not Broadcast to All Players
**Files:** `handlers.dart:267-275`

`GameInitialize` only sends to requesting player, not all players in game.

**Fix:** Broadcast game state to all players in the lobby.

---

### 12. `ServerHandler` Missing `@sealed` Annotation
**Files:** `handlers.dart:35`

Class used in pattern matching but not sealed.

**Fix:** Add `@sealed` annotation.

---

### 13. Minimal Test Coverage
**Files:** `test/game_helpers/turn_order_test.dart`

Only one test file exists.

**Fix:** Add tests for: lobby creation, player join/leave, game state transitions, race conditions.