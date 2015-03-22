class ChangeHuHands < ActiveRecord::Migration
   def change
    change_table :hu_call_hands do |t|  
      t.rename :bb, :blind_id
    end
     change_table :hu_push_hands do |t|  
      t.rename :bb, :blind_id
    end
    
  end
end
