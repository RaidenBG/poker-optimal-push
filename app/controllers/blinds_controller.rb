class BlindsController < ApplicationController
  
  def index
    @blinds = Blind.all.order("priority ASC")
  end
  
  def new
    @blinds = Blind.new
  end
  
  def create
    blinds = Blind.new 
    blinds.name = params[:blind]["name"]
    blinds.priority = params[:blind]["priority"]
    blinds.save
    
    redirect_to action: "index"
  end
  
  def edit
    @blinds = Blind.find(params["id"])
  end
  
  def update
    blinds = Blind.find(params["id"])
    blinds.name = params[:blind]["name"]
    blinds.priority = params[:blind]["priority"]
    blinds.save
    
    redirect_to action: "index"
  end
  
  def delete
    blinds = Blind.find(params["id"])
    blinds.destroy
    
    redirect_to action: "index"
  end
end
