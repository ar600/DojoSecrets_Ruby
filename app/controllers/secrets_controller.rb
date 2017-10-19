class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
    @user = current_user
  end
  def create
    @secret = Secret.create(content: params[:content], user: current_user)
    redirect_to "/users/#{current_user.id}/secrets"
  end

  def destroy
    @secret = Secret.find(params[:secret_id])
    @secret.destroy if @secret.user === current_user
    # redirect_to "/users/#{current_user.id}"
    redirect_to '/secrets'
  end

  private
    def secret_params
      params.require(:secret).permit(:content).merge(user: current_user)
    end

end
