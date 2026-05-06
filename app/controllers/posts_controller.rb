class PostsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :require_login  # ログイン必須にする

  def index
    # 全ての投稿ではなく、ログインユーザーの投稿のみ取得
    @posts = current_user.posts.order(created_at: :desc)
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post, notice: '投稿しました！'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
      # 自分の投稿のみ取得（他人の投稿は編集できないようにする）
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to @post, notice: '更新しました！'
    else
      render :edit
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy!
    redirect_to posts_url, notice: '削除しました！'
  end

  private

  def set_post
    @post = current_user.posts.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to posts_path, alert: '記事が見つかりません'
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
