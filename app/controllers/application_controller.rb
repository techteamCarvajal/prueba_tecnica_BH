class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 
  

  protected

		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [:cedula, :celular, :nombres, :apellidos, :ciudad, :tipo_documento])
			devise_parameter_sanitizer.permit(:account_update, keys: [:cedula, :celular, :nombres, :apellidos])
		end



end
