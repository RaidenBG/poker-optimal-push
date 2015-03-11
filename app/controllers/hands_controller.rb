class HandsController < ApplicationController
  
  def index
    @hands = Hand.all.order("priority ASC")
  end
  
  def new
    @hands = Hand.new
  end
  
  def create
    hands = Hand.new 
    hands.name = params[:hand]["name"]
    hands.priority = params[:hand]["priority"]
    hands.save
    
    redirect_to action: "index"
  end
  
  def edit
    @hands = Hand.find(params["id"])
  end
  
  def update
    hands = Hand.find(params["id"])
    hands.name = params[:hand]["name"]
    hands.priority = params[:hand]["priority"]
    hands.save
    
    redirect_to action: "index"
  end
  
  def delete
    hands = Hand.find(params["id"])
    hands.destroy
    
    redirect_to action: "index"
  end
  
end
