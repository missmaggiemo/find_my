class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end
  
  def feed
    @user = User.find(params[:id])
    redirect_to user_url(@user) unless current_user == @user
  end

end
