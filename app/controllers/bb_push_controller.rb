class BbPushController < ApplicationController
  def index
    @positions = Position.all.order("priority ASC")
    @blinds = Blind.all.order("priority ASC")
    
    current_position_id = params["position"]
    session["position"] = current_position_id if current_position_id
    @current_position = Position.find(session["position"]) if session["position"]
    
    current_blind_id = params["blind"]
    session["blind"] = current_blind_id if current_blind_id
    @current_blind = Blind.find(session["blind"]) if session["blind"]
    
    @current_hand = Hand.where(position_id: @current_position.id, blind_id: @current_blind.id).first if @current_position && @current_blind
  end
end
