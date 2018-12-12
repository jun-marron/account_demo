class RegistrationsController < Devise::RegistrationsController
  before_create :generate_code

  def after_sign_up_path_for(resource)
    user_path(resource)
  end
  private

      def sign_up_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

      def generate_code
        self.code = SecureRandom.alphanumeric(7)
      end
end
