class CreateBalls < ActiveRecord::Migration
  def change
    create_table :balls do |t|
      t.boolean :round
      t.integer :diameter
      t.string :name

      t.timestamps
    end
  end
end
