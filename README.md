## edge-installer

このリポジトリは、エッジデバイスに Docker と Node-RED をインストールするためのスクリプトを提供します。

### 対応デバイス

- AG10
- VirtualBox

### インストール方法

1. **Dockerのインストール:**
   ```bash
   curl -sSL https://raw.githubusercontent.com/YKGW-MK-SCC/edge-installer/main/inst_docker.sh | bash
   ```

2. **Node-REDのインストール:**
   ```bash
   curl -sSL https://raw.githubusercontent.com/YKGW-MK-SCC/edge-installer/main/inst_nodered.sh | bash
   ```

### アクセス方法

#### AG10

- **AG10設定画面:** http://192.168.0.254
- **Node-RED:** http://192.168.0.254:1880 

#### VirtualBox

- **Node-RED:** http://localhost:1880
- **InfluxDB:** http://localhost:8086 <a href="http://localhost:8086" target="_blank">http://localhost:8086</a>


**注意:** 上記のURLは、環境によっては変更が必要な場合があります。 
