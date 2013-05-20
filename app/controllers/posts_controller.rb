class PostsController < ApplicationController
  before_filter :except => [:index, :show] do
    redirect_to home_path unless logged_in?
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    render :edit
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path(@post), :notice => "Created post."
    else
      render :edit
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(posts_params)
      redirect_to post_url(@post), :notice => "Updated post."
    else
      render :edit
    end
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to posts_path
  end

  private

  def posts_params
    params.require(:post).permit(:content)
  end
end
