class SessionsController < ApplicationController

  def new
    
  end

  def create    
    user = User.find_by_name(params[:signin][:name])

    if user && user.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully."
      redirect_to root_url
    else
      flash[:error] = "There was a probelm with either your username or password."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = "Signed out successfully."
    redirect_to root_url
  end

end
