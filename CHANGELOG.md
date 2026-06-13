# Changelog

- All notable changes to this project will be documented in this file.  
（このプロジェクトにおける重要な変更点はすべて、このファイルに記録されます。）
- 学習中のため、記述が不適当な箇所もあります。


## [Unreleased] 未リリース

### Added 追加
- タグ付け機能
- メモ投稿機能
- アラート機能
- 豆知識機能
- 交流機能

### Fixed 不具合の修正
- タイトル未記入で作成した日記を削除できるようにする(postsのindex画面でのチェックボックス→複数選択→削除)

### Changed 変更
- アプリケーション全般のスタイリング

### Removed 削除
- 登録情報（みょうじ、なまえ）の片方を削除


## [Released] リリース済み
## 2026-06-13
- 日記を複数選択し、削除する機能の実装準備中　-　現在は、ボタンはあるものの削除ができない状態
### Added
- postsのビュー、コントローラー

## 2026-06-12
- 日記を複数選択し、削除する機能の実装準備を開始
### Added
- routes.rb：複数削除用のルーティング

## 2026-06-10
- 6月7日以降、最新のデプロイが反映されていなかった不具合を修正
### Fixed
- Renderで、AWSの環境変数を設定（コードの変更は無し）

## 2026-06-07
- 画像の複数枚投稿機能を実装　-　画像が見えない不具合について対応完了
### Added・Fixed
- Dockerfile.dev：libvips以降のパッケージインストール部分を追記／パッケージリストのキャッシュ削除部分を追記
- postsのビュー（show）

## 2026-06-05
- 画像の複数枚投稿機能を実装中　-　不具合（画像が見えない）が発生中
### Changed
- postsのモデル、コントローラー、ビュー（_form及びshow）
- Gemfile：image_processingを追加

## 2026-06-04
- 画像の複数枚投稿機能の実装準備を開始
### Changed
- postsのモデル、コントローラー、ビュー

## 2026-06-03
- 以下の状況下で発生するエラーの修正
  - 画像なしで投稿しようとした場合
  - 画像なしで投稿したものを閲覧しようとした場合
  - 画像なしで投稿したものを削除しようとした場合
### Fixed
- app/views/posts/show.html.erb

## 2026-06-01
フラッシュメッセージの実装
### Changed
- 各種ビュー、コントローラー
- config/locales/（activerecord , views）/ ja.yml　
- Gemfile：デコレーター準備のため

## 2026-05-29
i18n対応：投稿機能
### Changed
- postsのビュー、モデル
- user_sessions_controller.rb
- config/locales/views/ja.yml
- top.html.erb　及び　CHANGELOG.md : 表示内容の修正

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