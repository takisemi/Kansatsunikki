class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    Rails.logger.debug "Params: #{params.inspect}"

    user_params = params.require(:session).permit(:email, :password)
    @user = User.find_by(email: user_params[:email])&.authenticate(user_params[:password])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, status: :see_other
    else
      flash.now[:alert] = "ログインに失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other
  end
end
