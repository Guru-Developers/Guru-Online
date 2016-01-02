class UsersController < ApplicationController

  before_action :restrict_to_logged_in, only: [:index, :show, :destroy]

  def show
    if "#{params[:id]}" == "#{session[:user_id]}"
      @user = User.find(params[:id])
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome #{@user.name}"
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_path
  end  

  private

  # The following methods protect agaisnt cross site scripting attacks
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
