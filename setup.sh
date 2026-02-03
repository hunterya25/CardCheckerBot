#!/bin/bash

echo "🚀 Card Checker Bot - VPS Setup Script"
echo "========================================"
echo ""

# Update system
echo "📦 Updating system..."
sudo apt update && sudo apt upgrade -y

# Install dependencies
echo "📦 Installing dependencies..."
sudo apt install git python3 python3-pip screen -y

# Install Python packages
echo "🐍 Installing Python packages..."
pip3 install -r requirements.txt

# Create .env file
echo "⚙️  Setting up environment..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "✅ Created .env file"
    echo "⚠️  Please edit .env with your credentials:"
    echo "   nano .env"
else
    echo "✅ .env file already exists"
fi

# Create empty JSON files if they don't exist
echo "📁 Creating data files..."
for file in authorized_users.json user_tracking.json group_tracking.json gateway_cookies.json group_auth.json group_gateways.json gateway_privacy.json ba_config.json user_credits.json; do
    if [ ! -f "$file" ]; then
        echo "{}" > "$file"
        echo "✅ Created $file"
    fi
done

if [ ! -f hits.json ]; then
    echo "[]" > hits.json
    echo "✅ Created hits.json"
fi

if [ ! -f bot_settings.json ]; then
    echo '{"authorization_enabled": true}' > bot_settings.json
    echo "✅ Created bot_settings.json"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "📝 Next steps:"
echo "1. Edit .env file: nano .env"
echo "2. Start bot: screen -S cardbot"
echo "3. Run bot: python3 bot.py"
echo "4. Detach screen: Ctrl+A then D"
echo ""
echo "📚 Useful commands:"
echo "- Reattach to bot: screen -r cardbot"
echo "- List screens: screen -ls"
echo "- Stop bot: Ctrl+C (inside screen)"
echo ""
