class PostsController < ApplicationController

  respond_to :json, :html

  def index
    @posts = Post.all
    @posts = @posts.order_by([[:created_at, :desc]])

    @posts = @posts.page params[:page] unless @posts.count == 0
    respond_with @posts
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
  end

  def create
    @post = Post.new(params[:post])
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes params[:post]
    @post.save
    redirect_to post_path(@post)
  end

  def destroy
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end
end
