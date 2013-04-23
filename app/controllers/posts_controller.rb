class PostsController < ApplicationController
  before_filter :except => [:index, :show] do
    # authenticate
  end

  before_filter :except => [:index, :new, :create] do
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    render :edit
  end

  def create
    @post = Post.create(params.require(:post).permit(:content, :title))
    if @post
      redirect_to post_path(@post), :notice => "Created post."
    else
      render :edit
    end
  end

  def update
    if @post.update_attributes(params.require(:post).permit(:content))
      redirect_to post_url(@post), :notice => "Updated post."
    else
      render :edit
    end
  end

  def destory
    raise "Not yet implemented"
    # Post.destroy(params[:id])
  end
end
