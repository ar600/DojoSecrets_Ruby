class LikesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @secret = Secret.find(params[:secret_id])
  end
  def create
      Like.create(user:current_user, secret: Secret.find(params[:secret_id]))
      redirect_to "/secrets"
  end

  def destroy
      @like = Like.find(params[:like_id])
      @like.destroy if current_user === @like.user
      redirect_to "/secrets"
    end


end
