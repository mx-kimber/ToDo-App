class UsersController < ApplicationController
  def index
    @user = User.all
    render :index
  end
  
  def show
    @user = User.find_by(id: params[:id])
    render :show
  end  

  def create
    @user = User.new(
      name: params[:name], 
      email: params[:email], 
      password: params[:password_digest]
    )
    @user.save!
    render :show
  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.password = params[:password_digest] || @user.password
  
    @user.save!
    render :show
  end
  
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User has been successfully removed"}
  end

end
