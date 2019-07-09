class LatopsController < ApplicationController

  def index
    @laptops = Laptop.all
  end
  
end 