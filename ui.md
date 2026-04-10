# UI

This file documents the UI implementation plan for the game client.

## Screens

1. **LoginScreen** - Entry point for players to enter nickname and room code
2. **LobbyScreen** - Waiting room showing players and ready status
3. **GameScreen** - Main game interface with multiple states

## Game States & UI

### 1. Dealing State
- Show player's card (face up)
- Show all other players as unknown
- Show "Waiting for players..." indicator

### 2. Playing State (Night Phase)
Each player takes turns based on their card. The UI needs:

**Active Turn UI:**
- When `isPlayerTurn == true`: Show player's card and action button(s)
- When `isPlayerTurn == false`: Show "Waiting for other players..." indicator

**Action-Specific UI (based on GameCard):**
- `Soldier` - No action needed
- `Engineer` - Player selector to swap cards
- `Medic` - Auto-check, show result
- `Pyro` - Two player selector to swap their cards
- `Scout` - River card selector (show 2 cards)
- `Spy` - Player selector to look at and assumed identity
- `Demoman` - River card selector (swap blind)
- `BluSpy` - River card selector (show card)

**Wake Up/Sleep Animation:**
- Wake up: Highlight players with same card
- Sleep: Dim the screen, show action complete

### 3. Discussion State (Day Phase)
- Show "Time to discuss!" header with countdown
- All cards are hidden (show as unknown)
- Chat/text area for discussion (future feature)
- "Vote" button becomes active

### 4. Voting State
- Show voting UI with player list
- Each player selects who they think is a Blu Spy
- Show "Vote submitted" after voting

### 5. Ended State
- Show winner announcement: "Team Wins!" or "Blu Spy Wins!"
- Show all revealed cards
- "Play Again" button (future feature)

## Components to Implement

### ActionDialog
- Base dialog for executing card actions
- Sub-types:
  - `PlayerSelectDialog` - Select another player
  - `RiverCardSelectDialog` - Select from middle cards

### TimerWidget
- Countdown timer for discussion phase
- Shows remaining time in seconds

### VoteWidget
- Player selection grid for voting
- Disabled after vote submitted

### GameStateBanner
- Shows current game state
- Animated transitions between states

### CardRevealWidget
- Animated card flip for reveal
- Used for end game card reveal

### WinnerDialog
- Modal showing winner
- Confetti animation for team win
- Different animation for Blu Spy win

## Implementation Order

1. Update `GameScreen` to handle all GameState values
2. Add `isPlayerTurn` handling in providers
3. Implement action dialogs in `lib/screens/game/dialogs/`
4. Add voting UI component
5. Add timer for discussion phase
6. Add winner dialog
7. Add animations for wake up/sleep
8. End game card reveal animation

## Provider Changes

Need to add to `game_provider.dart`:
- `actionInProgress` - Currently executing an action
- `discussionTimeRemaining` - Timer for discussion
- `hasVoted` - Whether player has voted

## Files to Create/Modify

- `lib/screens/game/game_screen.dart` - Main state handling
- `lib/screens/game/dialogs/` - Action dialogs
- `lib/components/` - Reusable game components
- `lib/domain/game_provider.dart` - Additional state
- `lib/constants/durations.dart` - Discussion time constant