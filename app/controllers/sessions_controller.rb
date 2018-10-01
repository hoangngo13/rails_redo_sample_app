class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
  # Find user exist or not
    user = User.find_by(email: params[:session][:email].downcase)
    #Authenticate 
    if user&.authenticate(params[:session][:password])
      flash[:infor] = "Login sucess!"
      log_in user
      redirect_to user
    else
      flash[:danger] = "Email or password is not valid"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
