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

- **AG10設定画面:** http://192.168.0.254 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)  
- **Node-RED:** http://192.168.0.254:1880 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック) 
- **InfluxDB:** http://192.168.0.254:8086 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)

#### VirtualBox

- **Node-RED:** http://localhost:1880 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)
- **InfluxDB:** http://localhost:8086 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)


**注意:** 上記のURLは、環境によっては変更が必要な場合があります。 
