class UsersController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, status: :see_other, success: "ユーザー登録が完了しました"
    else
      flash.now[:danger] = "ユーザー登録に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end

def destroy
  @user = User.find(params[:id])

  # セキュリティ: 本人以外が削除できないようにする
  if @user == current_user
    @user.destroy
    reset_session  # セッションをクリア
    redirect_to root_path, notice: "アカウントを削除しました。", status: :see_other
  else
    redirect_to root_path, alert: "不正な操作です。", status: :see_other
  end
end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
