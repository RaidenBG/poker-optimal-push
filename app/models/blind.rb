class Blind < ActiveRecord::Base
  has_many :hands
  has_many :hu_push_hands
  has_many :hu_call_hands
end
