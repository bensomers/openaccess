# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  include Authentication

  before_filter :current_user, :prepare_navbar

  expires_session :time => 1.hour, 
                  :on_expiry => lambda {
                                warning "Your session has been expired, 
                                and you have been logged out."
                                        }

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

# Bogus action that only exists to allow me to use a .html.erb index page
  def home
    render :template => '../../public/home'
  end
  
  private
  
  def prepare_navbar
    @pages = Page.all.delete_if{|p| p.permalink == 'home'}
  end
  
  def admin_required
    unless @current_user.admin?
      warning "You are not authorized to view this page."
      redirect_to home_path
    end
  end
  
end
