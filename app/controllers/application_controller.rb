class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  include Sorcery::Controller  # ← before_action の前に移動
  before_action :require_login
  #   helper_method :logged_in?, :current_user ← Sorceryを使う場合は不要。

  private

  def not_authenticated
    redirect_to login_path, alert: 'ログインしてください'
  end
end
