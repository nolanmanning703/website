class PagesController < ApplicationController

  # home home home.
  def home
    render :home, :layout => 'home'
  end

end
