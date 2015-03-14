class HandsController < ApplicationController
  
  def index
    @hands = Hand.all.order("priority ASC")
  end
  
  def new
    @hand = Hand.new
  end
  
  def create
    hand = Hand.new 
    hand.name = params[:hand]["name"]
    hand.priority = params[:hand]["priority"]
    hand.position_id = params[:hand]["position_id"]
    hand.blind_id = params[:hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def edit
    @hand = Hand.find(params["id"])
  end
  
  def update
    hand = Hand.find(params["id"])
    hand.name = params[:hand]["name"]
    hand.priority = params[:hand]["priority"]
    hand.position_id = params[:hand]["position_id"]
    hand.blind_id = params[:hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def delete
    hand = Hand.find(params["id"])
    hand.destroy
    
    redirect_to action: "index"
  end
  
end
