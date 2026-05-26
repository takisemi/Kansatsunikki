# Changelog

- All notable changes to this project will be documented in this file.  
このプロジェクトにおける重要な変更点はすべて、このファイルに記録されます。
- 学習中であるため、記述要領が不適当な場合もあると思われます。


## [Unreleased] 未リリース

### Added 追加
- タグ付け機能
- メモ投稿機能
- アラート機能
- 豆知識機能
- 交流機能

### Fixed 不具合の修正
（現在は無し）

### Changed 変更
- アプリケーション全般のスタイリング

### Removed 削除
（現在は無し）  
  

## [Released] リリース済み

## 2026-05-26
i18n対応：ユーザー新規登録時、ログイン時の表示／エラーメッセージを修正

### Changed
- config/locales/activerecord/ja.yml
- config/locales/views/ja.yml
- app/views/users/new.html.erb
- app/views/user_sessions/new.html.erb
- app/views/static_pages/top.html.erb


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