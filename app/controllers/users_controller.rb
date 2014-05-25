class UsersController < ApplicationController
  
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:id])
    @email_hash = Digest::MD5.hexdigest(@user.email.downcase)
  end
  
  def feed
    @user = User.find(params[:id])
  end

end
