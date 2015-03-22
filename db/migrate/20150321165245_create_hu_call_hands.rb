class CreateHuCallHands < ActiveRecord::Migration
  def change
    create_table :hu_call_hands do |t|
      t.string :name
      t.integer :priority
      t.integer :bb

      t.timestamps null: false
    end
  end
end
