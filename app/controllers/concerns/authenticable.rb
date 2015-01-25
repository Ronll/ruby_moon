module Authenticable
  extend ActiveSupport::Concern

  # Sign in user.
  def sign_in_user(user)
    session[:user_id] = user.id.to_s
  end

  # Sign out user.
  def sign_out
    session[:user_id] = nil
  end

  # Get current signed in user.
  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  # Check if user is signed in.
  def user_signed_in?
    !current_user.nil?
  end

  included do
    helper_method :current_user, :user_signed_in?
  end
end