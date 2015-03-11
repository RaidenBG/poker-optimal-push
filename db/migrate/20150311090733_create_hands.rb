class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.string :name
      t.integer :priority
      t.integer :position
      t.integer :bb

      t.timestamps null: false
    end
  end
end
