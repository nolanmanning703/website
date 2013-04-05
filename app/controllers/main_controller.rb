class MainController < ApplicationController

  def index
    @post = Post.first
    if @post
      render :text => @post.markdown(:content), :layout => true
    else
      redirect_to :me
    end
  end

end
