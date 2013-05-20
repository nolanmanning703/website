class PagesController < ApplicationController

  def home
    if @post = Post.first
      render :template => 'posts/show'
    else
      redirect_to :me
    end
  end

end
