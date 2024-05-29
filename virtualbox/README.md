## edge-installer

このリポジトリは、エッジデバイスに Docker と Node-RED をインストールするためのスクリプトを提供します。

### 対応デバイス

- VirtualBox(ubuntu 20.04)

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

- **Node-RED:** http://localhost:1880 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)
- **InfluxDB:** http://localhost:8086 （新しいタブで開くには、CtrlキーまたはCmdキーを押しながらクリック)

**注意:** 上記のURLは、環境によっては変更が必要な場合があります。 
