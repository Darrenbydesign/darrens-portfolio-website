class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_filter :getPageNav
  def getPageNav
    @pageNav = Page.where("is_published = true").order(order: :asc)
  end
end
