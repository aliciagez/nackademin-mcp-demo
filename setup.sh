#!/bin/bash

echo "🚀 Sätter upp FastMCP DateTime Server..."

# Skapa virtual environment om det inte redan finns
if [ ! -d "venv" ]; then
    echo "📦 Skapar virtual environment..."
    python3 -m venv venv
else
    echo "✅ Virtual environment finns redan"
fi

# Aktivera virtual environment
echo "🔧 Aktiverar virtual environment..."
source venv/bin/activate

# Installera dependencies
echo "📥 Installerar dependencies..."
pip install -r requirements.txt

echo "✅ Setup klart!"
echo ""
echo "För att starta servern:"
echo "  source venv/bin/activate"
echo "  python server.py"
echo ""
echo "För att stänga av virtual environment:"
echo "  deactivate" 