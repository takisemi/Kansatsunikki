# config/initializers/sorcery.rb
Rails.application.config.sorcery.submodules = []

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    # -- core --
    # ユーザー名として使用する属性を指定
    user.username_attribute_names = [:email]
    
    # 暗号化されたパスワードを格納するカラムを指定
    user.crypted_password_attribute_name = :crypted_password
    
    # ソルトを格納するカラムを指定
    user.salt_attribute_name = :salt
    
    # テスト環境では暗号化の強度を下げる
    user.stretches = 1 if Rails.env.test?
  end

  # User モデルを指定
  config.user_class = "User"
end