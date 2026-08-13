#!/bin/sh
# Runs the bot without rebuilding (fast boot, needed to stay within the
# battle runner's bot connect timeout). Run `dotnet build` manually after
# changing woff.cs.
cd -- "$(dirname -- "$0")"
if [ -d "bin" ]; then
  exec dotnet run --no-build
else
  dotnet build
  exec dotnet run --no-build
fi
