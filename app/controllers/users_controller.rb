class UsersController < ApplicationController

  before_action :set_user, :only => [:show, :edit, :update]

  def new
    @user = User.new
  end

  def edit
    
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have signed up successfully." 
      session[:user_id] = @user.id
      redirect_to projects_path
    else
      render :new 
    end
  end

  def show
  end

  def update
    if @user.update(user_params) 
      flash[:notice] = "Profile has been updated."
      redirect_to user_path(@user)
    else
      flash[:alert] = "Profile has not been updated."
      redirect_to edit_user_path(@user)
    end
  end

  private

  # this is bad. Authentication should leverage session and should be in ApplicationController.
  def set_user
    @user = User.find(session[:user_id]) 
  end

  def user_params   
    params.require(:user).permit(:name,
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

end
