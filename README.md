# woff

Robocode Tank Royale bot in C# (.NET 9).

## Strategy

- **Targeting** — Multiple Choice Play It Forward (MCPiF): Monte Carlo simulation over 48 scenarios, predicting enemy movement with multi-order N-grams (order 2-7) across 1080 angle bins, plus virtual bullets to detect enemy fire from energy drops. Head-on fallback.
- **Movement** — Anti-Gravity: samples 36 arena points, weighted by repulsion from enemies, bullets, last enemy location, and corners. Stop-and-Go (sag): zig-zag ±90° near enemies (<250px) to break their targeting.

## Run

Requires .NET SDK 9 and a Tank Royale server/runner:

```sh
dotnet build
dotnet run --no-build
```

## Sparring results

vs RoboRumble leaderboard bots (via robocode-api-bridge, 5 rounds each):

| Battle | Result |
|---|---|
| woff vs Anjing | **woff 360-0** |
| 4-bot: Diamond, BeepBoop, DrussGT | **woff #2** (behind Diamond, above BeepBoop & DrussGT) |
| 1v1 vs DrussGT | DrussGT 305-275 (woff higher bullet damage) |

## Gameplay

![woff vs DrussGT](gifs/woff-vs-drussgt.gif)
