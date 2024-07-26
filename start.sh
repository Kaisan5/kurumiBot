#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/maihuyar/Goods.git /Goods
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Goods
fi
cd /Goods
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
