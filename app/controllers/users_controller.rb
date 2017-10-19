class UsersController < ApplicationController
  def new
  end

  def show
    @secrets = current_user.secrets
    @likes = current_user.secrets_liked
    @user = User.find (params[:user_id])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/users/'+(user.id).to_s
    else
      flash[:errors] = user.errors.full_messages
      redirect_to '/users/new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
