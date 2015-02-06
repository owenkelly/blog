class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
 
  def index
    @posts = Post.roots.order('created_at DESC')
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post.root, notice: "Post Updated!"
    else
      render :edit
    end
  end

  def create
    @post = Post.create(post_params)
    respond_to do |format|
      format.html {redirect_to @post}
      format.js
    end
  end

  def new
    @post = Post.new(parent_id: params[:parent_id])
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end



  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :parent_id)
  end

end
