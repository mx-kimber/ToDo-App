class CategoriesController < ApplicationController

def index 
  @categories = Category.all 
  render json:{message: "Is this working?"}
end 

end
