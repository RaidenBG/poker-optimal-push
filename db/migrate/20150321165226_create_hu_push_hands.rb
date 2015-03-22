class CreateHuPushHands < ActiveRecord::Migration
  def change
    create_table :hu_push_hands do |t|
      t.string :name
      t.integer :priority
      t.integer :bb

      t.timestamps null: false
    end
  end
end
