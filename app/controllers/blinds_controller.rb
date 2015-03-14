class BlindsController < ApplicationController
  
  def index
    @blinds = Blind.all.order("priority ASC")
  end
  
  def new
    @blind = Blind.new
  end
  
  def create
    blind = Blind.new 
    blind.name = params[:blind]["name"]
    blind.priority = params[:blind]["priority"]
    blind.save
    
    redirect_to action: "index"
  end
  
  def edit
    @blind = Blind.find(params["id"])
  end
  
  def update
    blind = Blind.find(params["id"])
    blind.name = params[:blind]["name"]
    blind.priority = params[:blind]["priority"]
    blind.save
    
    redirect_to action: "index"
  end
  
  def delete
    blind = Blind.find(params["id"])
    blind.destroy
    
    redirect_to action: "index"
  end
end
