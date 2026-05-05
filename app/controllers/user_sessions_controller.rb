class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    Rails.logger.debug "Params: #{params.inspect}"
  # デバッグ用ログ
  Rails.logger.info "=== Login attempt ==="
  Rails.logger.info "Email: #{params[:session][:email]}"
  Rails.logger.info "User found: #{User.find_by(email: params[:session][:email]).present?}"
  



    user_params = params.require(:session).permit(:email, :password)
    @user = login(params[:session][:email], params[:session][:password])


    # デバッグ用ログ
    ails.logger.info "Login result: #{@user.present?}"


    if @user
      redirect_to root_path, status: :see_other, success: 'ログインしました'
    else
       Rails.logger.info "Login failed"
       flash.now[:danger] = 'ログインに失敗しました'
       render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
