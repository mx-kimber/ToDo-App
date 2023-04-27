class UsersController < ApplicationController

  def index
    # @tasks = Task.all
    render json: {message: "Working!"}
  end


end
