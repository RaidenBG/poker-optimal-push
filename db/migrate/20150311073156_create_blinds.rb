class CreateBlinds < ActiveRecord::Migration
  def change
    create_table :blinds do |t|
      t.string :name
      t.integer :priority

      t.timestamps null: false
    end
  end
end
