class Hand < ActiveRecord::Base
  
  belongs_to :position
  belongs_to :blind
end
