class PositionsController < ApplicationController
  
  def index
    @positions = Position.all.order("priority ASC")
  end
  
  def new
    @position = Position.new
  end
  
  def create
    position = Position.new 
    position.name = params[:position]["name"]
    position.priority = params[:position]["priority"]
    position.save
    
    redirect_to action: "index"
  end
  
  def edit
    @position = Position.find(params["id"])
  end
  
  def update
    position = Position.find(params["id"])
    position.name = params[:position]["name"]
    position.priority = params[:position]["priority"]
    position.save
    
    redirect_to action: "index"
  end
  
  def delete
    position = Position.find(params["id"])
    position.destroy
    
    redirect_to action: "index"
  end
  
end
