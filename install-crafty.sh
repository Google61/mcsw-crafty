# sudo install-crafty.sh !!!
apt install git python3 python3-dev python3-pip software-properties-common openjdk-8-jdk openjdk-8-jre
mkdir -p /var/opt/minecraft/crafty
mkdir -p /var/opt/minecraft/server
cd /var/opt/minecraft/crafty
git clone https://gitlab.com/crafty-controller/crafty-4.git
python3 -m venv venv
cd crafty-4
pip3 install --no-cache-dir -r requirements.txt
mv $GITHUB_WORKSPACE/main.py ./main.py
python3 main.py
