class PagesController < ApplicationController

  def home
    @post = Post.first
    if @post
      render :template => 'posts/show'
    else
      redirect_to :me
    end
  end

end
