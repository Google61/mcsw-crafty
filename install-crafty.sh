sudo apt install git python3 python3-dev python3-pip software-properties-common openjdk-8-jdk openjdk-8-jre
sudo mkdir -p /var/opt/minecraft/crafty
sudo mkdir -p /var/opt/minecraft/server
cd /var/opt/minecraft/crafty
sudo git clone https://gitlab.com/crafty-controller/crafty-4.git
sudo python3 -m venv venv
cd crafty-4
pip3 install --no-cache-dir -r requirements.txt
sudo mv $GITHUB_WORKSPACE/main.py ./main.py
sudo python3 main.py
