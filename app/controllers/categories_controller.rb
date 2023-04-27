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

end
