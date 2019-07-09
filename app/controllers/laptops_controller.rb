class LaptopsController < ApplicationController
    before_action :set_laptop, only: [:show, :edit, :update, :destroy]

  def index
    @laptops = Laptop.all
  end

  def show
    
  end

  def edit
    
  end

  def update
    if @laptop.update(laptop_params)
      redirect_to laptops_url
    else
      redirect_to edit_laptop_url
    end
  end

  def destroy
    @laptop.destroy
    redirect_to laptops_url
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)
    if @laptop.save
      redirect_to laptops_url
    else
      redirect_to new_laptop_url
    end   
  end

    private
    
  def set_laptop
    @laptop = Laptop.find(params[:id])
  end

  def laptop_params
    params.require(:laptop).permit(:title, :description, :price, :published)
  end

end 