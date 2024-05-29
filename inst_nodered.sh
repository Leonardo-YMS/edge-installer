# Node-REDのインストールと設定
mkdir -p ~/docker.node-red
cd ~/docker.node-red

# dataディレクトリを作成
mkdir data

# Docker Composeファイルの作成
cat <<EOF > docker-compose.yml
version: '3'
services:
  nodered:
    image: nodered/node-red:latest
    restart: always
    ports:
      - "1880:1880"
    volumes:
      - ./data:/data
    devices:
      - /dev/ttyMV1:/dev/ttyMV1
EOF

sudo chown -R 1000:1000 ~/docker.node-red/data 
sudo chmod -R 775 ~/docker.node-red/data

# udevルールの作成
echo 'KERNEL=="ttyMV1", MODE="0666"' | sudo tee /etc/udev/rules.d/99-ttyMV1.rules

# udevルールの再読み込み
sudo udevadm control --reload-rules
sudo udevadm trigger

cd ~/docker.node-red
docker compose up -d

