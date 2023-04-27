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
      email: params[:age], 
      password: params[:password]
    )

    if @user.save
      render :show
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end

  end
  
  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
  
    
    if @user.save
      render :show
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
    
  end
  
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "User has been successfully removed"}
  end

end
