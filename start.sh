#!/bin/bash

# Kontrollera att virtual environment finns
if [ ! -d "venv" ]; then
    echo "❌ Virtual environment hittades inte!"
    echo "Kör först: ./setup.sh"
    exit 1
fi

echo "🚀 Startar FastMCP DateTime Server..."

# Aktivera virtual environment och starta servern
source venv/bin/activate
python server.py 