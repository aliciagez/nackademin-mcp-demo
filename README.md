# FastMCP DateTime Server

Ett enkelt MCP (Model Context Protocol) server som tillhandahåller aktuell datum och tid för olika tidszoner.

## Installation

1. Skapa och aktivera en virtual environment:
```bash
# Skapa virtual environment
python3 -m venv venv

# Aktivera virtual environment
# På macOS/Linux:
source venv/bin/activate

# På Windows:
# venv\Scripts\activate
```

2. Installera dependencies:
```bash
pip install -r requirements.txt
```

## Användning

**Viktigt:** Se till att din virtual environment är aktiverad innan du kör servern!

Starta servern:
```bash
python server.py
```

Servern startar på port 8000 som standard. Du kan ändra porten genom att sätta miljövariabeln `PORT`:
```bash
PORT=3000 python server.py
```

För att stänga av virtual environment när du är klar:
```bash
deactivate
```

## Funktioner

### current_datetime()
Returnerar aktuell datum och tid som en sträng.

**Parametrar:**
- `timezone` (optional): Tidszon namn (t.ex. 'UTC', 'US/Pacific', 'Europe/Stockholm'). Standard är 'America/New_York'.

**Returnerar:**
En formaterad datum- och tidssträng.

**Exempel på tidszoner:**
- `UTC`
- `Europe/Stockholm`
- `US/Pacific`
- `America/New_York`
- `Asia/Tokyo`

## API

Servern exponerar ett MCP-kompatibelt API över Server-Sent Events (SSE) på `http://localhost:8000`.

## Utveckling

För utveckling kan du köra servern i debug-läge (vilket redan är aktiverat i koden) för mer detaljerad loggning.

### Snabb start-guide:
```bash
# 1. Klona/ladda ner projektet
# 2. Navigera till projektmappen
# 3. Skapa virtual environment
python3 -m venv venv

# 4. Aktivera virtual environment
source venv/bin/activate

# 5. Installera dependencies
pip install -r requirements.txt

# 6. Starta servern
python server.py
``` 