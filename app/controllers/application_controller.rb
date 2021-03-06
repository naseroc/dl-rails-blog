class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Get categories for navbar
  before_action :get_categories
  
  def get_categories
    @categories = Category.all
  end
  
end
