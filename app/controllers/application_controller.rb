class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def logged_in?
    cookies[:auth_token] == Me.instance.auth_token
  end
  helper_method :logged_in?

  # login! : Me -> Boolean
  # Sets the :auth_token on the cookies. Effectively logging
  # Me in.
  #
  # Options:
  # :remember_me - Sets a permanent cookie.
  #
  def login!(options = {})
    if options[:remember_me]
      cookies.permanent[:auth_token] = Me.instance.auth_token
    else
      cookies[:auth_token] = Me.instance.auth_token
    end
  end
  helper_method :login!

  # logout! : -> Boolean
  # Clears the :auth_token from the cookies. If there is not a
  # :auth_token, return false. Otherwise true.
  #
  def logout!
    cookies[:auth_token] ? !cookies[:auth_token] = nil : false
  end
  helper_method :logout!

end
