class HuCallHandsController < ApplicationController

  def index
    @hands = HuCallHand.all.order("priority ASC")
  end
  
  def new
    @hand = HuCallHand.new
  end
  
  def create
    hand = HuCallHand.new 
    hand.name = params[:hu_call_hand]["name"]
    hand.priority = params[:hu_call_hand]["priority"]
    hand.blind_id = params[:hu_call_hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def edit
    @hand = HuCallHand.find(params["id"])
  end
  
  def update
    hand = HuCallHand.find(params["id"])
    hand.name = params[:hu_call_hand]["name"]
    hand.priority = params[:hu_call_hand]["priority"]
    hand.blind_id = params[:hu_call_hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def delete
    hand = HuCallHand.find(params["id"])
    hand.destroy
    
    redirect_to action: "index"
  end
end
