class CategoriesController < ApplicationController

  def index 
    @categories = Category.all 
    render json:{message: "Is this working?"}
  end 

  def create
    @category = Category.create( 
      name: params[:name],
    )
    render :show
  end 

  def show 
    @category = Category.find_by(id: params[:id])

    render :show
  end 


  def create 
    @category = Category.create(
      name: params["name"], 
    )

    render :show
  end 

  def update
    @category = Category.update(
    name: params[:name] || category.name,
  )
  end 
end
