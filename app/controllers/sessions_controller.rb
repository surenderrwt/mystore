class SessionsController < ApplicationController
  layout 'front', only: [:new]
  before_action :session_params, only: [:create]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])    
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to pages_index_path, notice: "User #{@user.fname} is avaiable." 
    else
      redirect_to login_path, notice: "Username or Password is incorrect. Please login again..." 
    end 
    

  end

  def destroy
    session[:user_id] = nil
    redirect_to pages_index_path, notice: "Hope to see you again soon!."

  end

  def session_params
    params.permit(:username, :password)
    
  end
end
