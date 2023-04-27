class UsersController < ApplicationController

  def index
    @users = User.all
    render json: {message: "Working!"}
  end


end
