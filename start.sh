if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/belugaop/jack-auto-filter-bot.git /jack-auto-filter-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /jack-auto-filter-bot
fi
cd /autofilter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
