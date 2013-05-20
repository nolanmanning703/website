class PagesController < ApplicationController

  def home
    if @post = Post.first
      render :text => @post.markdown(:content), :layout => true
    else
      redirect_to :me
    end
  end

end
