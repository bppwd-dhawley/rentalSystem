class ApplicationController < ActionController::Base
  layout :choose_layout
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def choose_layout
  	params[:controller].start_with?("backstage") ? "administrative" : "application"
  end
end
