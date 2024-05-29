#!/bin/bash

# **Dockerのインストール**

# 前提条件
# - Ubuntuベースのオペレーティングシステム
# - インターネット接続
# - Sudo権限

# ステップバイステップのインストール

# 1. システムパッケージの更新
sudo apt-get update
sudo apt-get upgrade -y

# 2. 必要なパッケージのインストール
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# 3. Dockerの公式GPGキーの追加
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 4. 安定したリポジトリの設定
# arm64の場合、アーキテクチャをamd64に変更する必要があるかもしれません
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# 5. パッケージインデックスの更新
sudo apt-get update

# 6. Dockerエンジンのインストール
# arm64の場合、docker-ce-cliをインストールする
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# 7. Dockerの起動
sudo systemctl start docker

# 8. インストールの確認
# `hello-world` イメージを実行して、Dockerが正しくインストールされているか確認します
sudo docker run hello-world

# 9. 非ルートユーザーとしてDockerを管理
# `sudo` なしでDockerコマンドを実行するために、ユーザーをDockerグループに追加します
sudo usermod -aG docker $USER

# Dockerのインストールが完了しました。変更を有効にするには、ログアウトしてから再度ログインしてください。
echo -e "\033[31mDockerのインストールが完了しました。変更を有効にするため再ログインしてください。自動的にログアウトします...\033[0m"
pkill -KILL -u "$USER"
