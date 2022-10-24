class Api::V1::SessionsController < Devise::SessionsController
  def create
    @user = User.find_by(email: login_params[:email])
    if @user&.valid_password?(login_params[:password])
      @token = issue_token(@user)
      render json: { token: @token, username: @user.name, user_role: @user.role, email: @user.email }, status: :ok
    else
      render json: { error_message: 'Login failed!', details: 'Email or password is invalid' },
             status: :unprocessable_entity
    end
  end

  private

  def login_params
    params.require(:user_login).permit(:email, :password)
  end
end
