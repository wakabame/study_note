# 勉強ノート

数学+プログラミング的な領域の勉強をまとめています

<https://wakabame.github.io/study_note/> にホスティングしています

Rye + uv でのプロジェクト管理
GitHub Actions でのCI

## プロジェクト管理

バージョン管理を Rye + uv で行います

## CI

コードフォーマッティング

* Python
* jupyter notebook

## 導入方法

```sh
# uv のインストール <https://docs.astral.sh/uv/getting-started/installation/>
sh ./setup-uv.sh
# pre-commit 導入
uv run pre-commit install
```

## 開発環境でのプレビュー

```sh
. .venv/bin/activate
# notebook は保存するだけでは反映されてない
find notebook/ -name "*.ipynb" | while read file; do
  output_file=$(echo "$file" | sed 's|notebook/\([^/]*\)/|docs/\1/notebook/|; s|.ipynb$|.qmd|')
  mkdir -p $(dirname "$output_file")
  quarto convert "$file" --output "$output_file"
done
quarto preview docs
# localhost にプレビューが作成されるので, ブラウザからアクセスする
```
