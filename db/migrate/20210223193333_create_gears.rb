class CreateGears < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      
      t.string :category
      t.string :description
      t.string :price
      t.string :name

      t.timestamps
    end
  end
end
