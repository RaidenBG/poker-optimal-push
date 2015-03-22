class HuBbPushController < ApplicationController

  def index
    @blinds = Blind.all.order("priority ASC")
       
    
    current_blind_id = params["blind"]
    session["blind"] = current_blind_id if current_blind_id
    @current_blind = Blind.find(session["blind"]) if session["blind"]
    
    @current_hand = HuPushHand.where(blind_id: @current_blind.id).first if @current_blind
    @current_hand_1 = HuCallHand.where(blind_id: @current_blind.id).first if @current_blind
  end
  
end
