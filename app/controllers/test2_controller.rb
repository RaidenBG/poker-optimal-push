class Test2Controller < ApplicationController
  
  def index
  end

  def demotest
    @today = Date.today
    @tomorrow = @today + 1.day
    @yesterday = @tomorrow - 2.day
  end
  
  def calculations
    a = 5
    b = 6
    if a > b
      @text = "А е по-голямо от B"
    elsif a == b
      @text = "А е равно на B"
    else
      @text = "А е по-малко от B"
    end 
  end  
  
  def positions
    @p1 = Position.first
    @p2 = Position.second
    
    @p1 = Position.find(1)
    @p2 = Position.find(2)
    
    @p1 = Position.where(name: "UTG").first
    
    @all_positions = Position.all
  end
  

  
end
