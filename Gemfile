source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
# 代わりにRailsをバンドルする: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0"
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Tailwind CSS の削除に伴い、gem "cssbundling-rails"を削除
# SCSSを使用、コンパイルするために必要（RailsのスタイリングはあくまでSCSSでなくCSS）
gem "sprockets-rails"
gem "sassc-rails" 

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt"

gem "rails-i18n"

# 認証gem。current_user や logged_in? のメソッドを自分で書かずに使える
gem "sorcery"

# decorater…モデルの機能を拡張し、ビューやコントローラーで使用するためのメソッドを追加（例:ユーザーのフルネーム表示）
gem "draper"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# ビューでimage_tagを使っている場合、ActiveStorageが自動的に適切なサイズのvariantを生成しようとするため、image_processingが必要
gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # バグ確認
  gem "pry-byebug"

  # ActiveStorage設定のため、AWSを導入し、.envファイルを作成した。dotenvは、.envをRailsで読み込むために必要。
  gem "dotenv-rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  # AWS S3のインストール
  gem 'aws-sdk-s3', require: false
end
