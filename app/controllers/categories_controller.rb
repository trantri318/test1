class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @category.update(category_params)
      redirect_to categories_url
    else
      redirect_to edit_category_url
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_url
    else
      redirect_to new_category_url 
    end  
  end

  def destroy
    @category.destroy
    redirect_to categories_url
  end
  private

  def category_params
    params.require(:category).permit(:title) 
  end  

  def set_category
    @category = Category.find(params[:id])
  end
end 


