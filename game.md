# Game

This file denotes how the game operates.

## Setup

1. The deck of cards is shuffled
2. Each player draws a card, looks at it, and does not show any other players.
3. 2-3 cards are placed in the center, based on number of players or difficulty level.
4. At least one player must have a "Blu Spy" card.

## Game Loop

1. Based on the turn order, each player with that card "wakes up" and sees all other players with that card.
2. If the card has an action, complete it now
3. The player "goes back to sleep".
4. Once all players have had their turn, hold a meeting based on the configured discussion time.
5. By the end of the meeting, each player must vote for the player that they think is a "Blu Spy".
6. If a "Blu Spy" is voted out, the "team" of players that is not "Blu Spies" wins. Otherwise, the "Blu Spy" is the winner.
