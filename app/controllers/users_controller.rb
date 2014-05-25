class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
  end
  
  def feed
    @user = User.find(params[:id])
  end

end
