# Card Checker Bot 💳

Telegram bot for checking credit cards with multiple payment gateways.

## Features ✨

- 🔐 Multiple gateway support (Stripe, Braintree, etc.)
- 💰 Credit system (200 free credits daily)
- 👥 Group & private chat support
- 📊 Hit logging system
- 🔒 Authorization system
- 📈 User tracking & analytics
- 🎯 Admin panel

## Gateways 🚀

- `/au` - Stripe Auth (Infinite Auto)
- `/sb` - Stripe Charge $1
- `/ba` - Braintree Auth
- `/au2` - Stripe Auth 2
- `/bc` - Braintree Charge
- `/au3` - Stripe Auth 3
- `/ba1` - Braintree Auth 2

## Setup 🛠️

### 1. Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/CardCheckerBot.git
cd CardCheckerBot
```

### 2. Install Dependencies

```bash
pip3 install -r requirements.txt
```

### 3. Configure Environment

```bash
# Copy template
cp .env.example .env

# Edit with your credentials
nano .env
```

### 4. Run Bot

**Local:**
```bash
python3 bot.py
```

**VPS (with Screen):**
```bash
screen -S cardbot
python3 bot.py
# Ctrl+A then D to detach
```

**VPS (with PM2):**
```bash
pm2 start bot.py --name cardbot --interpreter python3
pm2 save
pm2 startup
```

## VPS Deployment 🌐

### Quick Setup Script

```bash
#!/bin/bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install git python3 python3-pip screen -y

# Clone repo
git clone https://github.com/YOUR_USERNAME/CardCheckerBot.git
cd CardCheckerBot

# Install Python packages
pip3 install -r requirements.txt

# Setup environment
cp .env.example .env
nano .env  # Edit with your credentials

# Run bot
screen -S cardbot
python3 bot.py
```

### Update Bot

```bash
# Stop bot
screen -r cardbot
# Ctrl+C

# Pull updates
git pull

# Restart bot
python3 bot.py
# Ctrl+A then D
```

## Admin Commands 👑

- `/stats` - Bot statistics
- `/broadcast` - Send message to all users
- `/sendto` - Send message to specific user
- `/auth` - Authorize user
- `/unauth` - Unauthorize user
- `/authgroup` - Authorize group
- `/unauthgroup` - Unauthorize group

## User Commands 📱

- `/start` - Start bot
- `/credits` - Check credits
- `/info` - Card info
- `/gen` - Generate cards
- `/sk` - Check Stripe key

## File Structure 📁

```
CardCheckerBot/
├── bot.py                      # Main bot file
├── requirements.txt            # Python dependencies
├── .env.example               # Environment template
├── .gitignore                 # Git ignore rules
├── README.md                  # This file
├── authorized_users.json      # Authorized users
├── user_tracking.json         # User activity
├── bot_settings.json          # Bot settings
├── group_tracking.json        # Group activity
├── gateway_cookies.json       # Gateway cookies
├── group_auth.json            # Group authorization
├── group_gateways.json        # Group gateway settings
├── hits.json                  # Hit logs
├── gateway_privacy.json       # Privacy settings
├── ba_config.json             # BA gateway config
└── user_credits.json          # User credits
```

## Security 🔒

- Never commit `.env` file
- Keep JSON files private
- Use strong bot token
- Regularly update dependencies

## Credits System 💰

- 200 free credits daily
- Resets at 12 AM IST
- 1 credit = 1 card check

## Support 💬

Contact: @devtronexop

## License 📄

Private use only.

---

Made with ❤️ by Walter
