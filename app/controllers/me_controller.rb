class MeController < ApplicationController
  before_filter do
    @me = Me.instance
  end

  def show

  end

  def update
    @me.update_attribute(:about, params[:about])
    redirect_to :action => :show
  end

end
