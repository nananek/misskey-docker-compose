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
cp db.env.example db.env                # DB接続情報を編集
cp cloudflare.env.example cloudflare.env # Cloudflare Tunnel情報を編集
cp misskey-default.yml.example misskey-default.yml       # Misskey本体設定を編集
```

### ボリュームディレクトリの作成
```sh
mkdir -p db_data files
```

## 起動方法
```sh
docker compose up -d
```

## ライセンス
AGPLv3

---
Misskey公式: https://github.com/misskey-dev/misskey
