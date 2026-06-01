class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, status: :see_other, success: t('defaults.flash_message.account_created')
    else
      flash.now[:danger] = t('defaults.flash_message.account_not_created')
      render :new, status: :unprocessable_entity
    end
  end

def destroy
  @user = User.find(params[:id])

  # セキュリティ: 本人以外が削除できないようにする
  if @user == current_user
    @user.destroy
    reset_session  # セッションをクリア
    redirect_to root_path, notice: t('defaults.flash_message.account_destroyed'), status: :see_other
  else
    redirect_to root_path, alert: t('defaults.flash_message.account_not_destroyed'), status: :see_other
  end
end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
