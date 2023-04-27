class TasksController < ApplicationController

  def index
    # @tasks = Task.all
    render json: {message: "Working! With Shane's branch too!"}
  end
end
