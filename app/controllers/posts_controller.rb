class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
    render :edit
  end

  def create
    @post = Post.create(params.require(:post).permit(:content))
    if @post
      redirect_to post_path(@post), :notice => "Created post."
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
    render :text => @post.markdown(:content), :layout => true
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
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
