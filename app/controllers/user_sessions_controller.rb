class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    Rails.logger.debug "Params: #{params.inspect}"

    user_params = params.require(:session).permit(:email, :password)
    @user = login(params[:session][:email], params[:session][:password])

    if @user
      redirect_to root_path, status: :see_other
    else
      flash.now[:alert] = "ログインに失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
