class HuPushHandsController < ApplicationController
  
  def index
    @hands = HuPushHand.all.order("priority ASC")
  end
  
  def new
    @hand = HuPushHand.new
  end
  
  def create
    hand = HuPushHand.new 
    hand.name = params[:hu_push_hand]["name"]
    hand.priority = params[:hu_push_hand]["priority"]
    hand.blind_id = params[:hu_push_hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def edit
    @hand = HuPushHand.find(params["id"])
  end
  
  def update
    hand = HuPushHand.find(params["id"])
    hand.name = params[:hu_push_hand]["name"]
    hand.priority = params[:hu_push_hand]["priority"]
    hand.blind_id = params[:hu_push_hand]["blind_id"]
    hand.save
    
    redirect_to action: "index"
  end
  
  def delete
    hand = HuPushHand.find(params["id"])
    hand.destroy
    
    redirect_to action: "index"
  end
end
