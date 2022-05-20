class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

    include Pundit

    rescue_from Pundit::NotAuthorizedError, with: :forbidden

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |user_params|
            user_params.permit({ roles: [] }, :email, :password, :password_confirmation,)
        end
    end

    private     

    def forbidden
        flash[:alert] = "Unauthorized action."
        redirect_to root_path    
    end

end
