class PostsController < ApplicationController
  before_filter :except => [:index, :show] do
    redirect_to home_path unless logged_in?
  end

  before_filter :except => [:index, :new, :create] do
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def show
    render :text => @post.markdown(:content), :layout => true
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
