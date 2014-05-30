class UsersController < ApplicationController
  
  before_action :authenticate_user!, only: [:feed]
  
  def show
    @user = User.find_by(username: params[:id])
  end
  
  def update
    @user = User.find_by(username: params[:id])
    if @user && @user.update(user_params)
      render json: @user
    else
      render json: "User #{params[:id]} doesn't exist"
    end
  end
  
  def feed
    @user = User.find_by(username: params[:id])
    redirect_to user_url(@user) unless current_user == @user
  end
  
  def recommendation
    @user = User.find(params[:id])
    @rec = @user.generate_recommendation
    render json: @rec, include: :business
  end
  
  def username_results
    username = params[:username]
    @matches = []
    User.all.each do |user|
      @matches << user if user.username.match(/#{username}/i) || user.email.match(/#{username}/i)
    end
    @matches = @matches.sort_by { |user| 0 - user.activity.length }
    @search_term = username
  end


  def user_params
    params.require(:user).permit(:username, :email)
  end


end
