class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!, :except => [:index]
  protect_from_forgery with: :exception

<<<<<<< HEAD

  before_filter :configure_permitted_parameters, if: :devise_controller?


   protected

   def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
   end
=======
  protected

  


def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| 
      u.permit(:email, :password, :password_confirmation, :phone, :nickname)
    }
    devise_parameter_sanitizer.for(:account_update) << :nickname
  end
>>>>>>> dc448754244242f5c95a5c32a3ab918c643ac1d3
end
