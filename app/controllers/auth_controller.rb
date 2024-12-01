class AuthController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = JWT.encode({ user_id: user.id },
    end
  end

  def signup
    user = User.create(user_params)
    if user.valid?
      token = JWT.encode({ user_id: user.id },
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end

  def logout
    # This is a placeholder for a future
  end
end
