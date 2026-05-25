# Changelog

All notable changes to this project will be documented in this file.  
このプロジェクトにおける重要な変更点はすべて、このファイルに記録されます。


## [Unreleased] 未リリース

### Added 追加
- 画像投稿機能（対応中）
- タグ付け機能
- メモ投稿機能
- アラート機能
- 豆知識機能
- 交流機能

### Fixed 不具合の修正
（現在は無し）

### Changed 変更
- ユーザー新規登録時のエラーメッセージ（対応中）
- アプリケーション全般のスタイリング

### Removed 削除
（現在は無し）  
  

## [Released] リリース済み

## 2026-05-25
画像投稿機能を追加

### Added
- Gemfile
  - dotenv　を追加
- Gemfile.lock
- app/controllers/posts_controller.rb
  - :image　を追加
- app/views/posts/_form.html.erb
  - :image　を追加
- app/views/posts/show.html.erb
  - :imageのformタグ　を追加
- config/environments/development.rb
  - config.active_storage.service = :amazon　を追加
- config/storage.yml
  - amazon:　を追加


## 2026-05-22
Nodeのバージョンを長期サポート版「v24.15.0(Latest LTS: Krypton)」に更新

### Changed
- Dockerfile
  - バージョンを24.15.0に変更
- Dockerfile.dev
  - 余分な"&&"を削除（構文エラー）
  - Node.jsのシェルスクリプトの重複箇所を削除
  - Node.jsのシェルスクリプトのバージョンをv24に変更
- package.json
  - バージョンを">=24.0.0"に変更
- test/fixtures/users.yml
  - テストユーザーの登録情報がNULLにならないよう、登録情報を明記
- RenderのEnvironment Variables
  - 「NODE_VERSION　24.15.0」を設定（現在、Renderのデフォルトが24.14.1なので）


## 2026-05-20
ディレクトリ内の整理、画像投稿機能の実装準備


## 2026-05-06
RUNTEQのソーシャルポートフォリオに公開

---------------- CHANGELOGここまで ----------------