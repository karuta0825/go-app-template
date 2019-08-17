## 概要

go 環境構築用 boilertemplate

### ディレクトリ構成

```shell
.
├── Makefile
├── build         # build実行後にできるファイルの格納先
├── coverage      # テストのカバレッジ保存先
├── go.mod
├── main.go
└── pkg          # main.goからimportされるパッケージ
    └── sample
        ├── sample.go
        └── sample_test.go # pkg内に記述
```

### 各種コマンド

- `make initmod` go.mod を作成
- `make test` テスト実行
- `make run` go run で実行
- `make build` ビルド
