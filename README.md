# Misskey Docker Compose Setup

MisskeyをDocker Composeで簡単に構築・運用するためのサンプル構成です。

## 構成内容
- Misskey (SNS本体)
- PostgreSQL (DB)
- Redis (キャッシュ・ジョブ管理)
- Cloudflared (Cloudflare Tunnel)

## 初期セットアップ
### 必要ファイルのコピー（初回のみ）
```sh
cp docker-compose.yml.example docker-compose.yml
cp db.env.example db.env
cp cloudflare.env.example cloudflare.env
cp misskey-default.yml.example misskey-default.yml
sudo chown 991:991 volumes/misskey-files
```
細かいことは公式ドキュメントを見てください。

## 起動方法
```sh
docker compose up -d
```

## ライセンス
AGPLv3

---
Misskey公式: https://github.com/misskey-dev/misskey
