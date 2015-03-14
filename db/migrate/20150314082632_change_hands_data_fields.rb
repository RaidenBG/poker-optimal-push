class ChangeHandsDataFields < ActiveRecord::Migration
  def change
    change_table :hands do |t|
      t.rename :position, :position_id
      t.rename :bb, :blind_id
    end
    change_column :hands, :position_id, :integer
    change_column :hands, :blind_id, :integer
  end
end
