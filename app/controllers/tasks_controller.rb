class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end

  def create
    def create
      @task = task.new(
        user_id: params[:task][:user_id],
        category_id: params[:task][:category_id],
        title: params[:task][:title],
        description: params[:task][:description],
        deadline: params[:task][:deadline],
        completed: params[:task][:completed]

      )
      @task.save
      render :show
    end
  end


end
