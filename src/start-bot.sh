#!/bin/bash

# Starte den Bot mit PM2
pm2 start bot.js --name "StarsTonBot" --watch --ignore-watch="node_modules users.json .git"

# Speichere die PM2-Konfiguration (überlebt Neustart)
pm2 save

# Zeige Status
pm2 list

echo "Bot mit PM2 gestartet. Logs mit: pm2 logs StarsTonBot"
echo "Stoppen mit: pm2 stop StarsTonBot"
echo "Neustarten mit: pm2 restart StarsTonBot"
