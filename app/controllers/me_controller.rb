class MeController < ApplicationController
  before_filter :only => [:edit, :update] do
    # authentication
  end

  before_filter { @me = Me.instance }

  def update
    @me.update_attribute(:about, params[:about])
    redirect_to :action => :show
  end

end
