class CreateGears < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :description
      t.string :price
      t.string :name

      t.timestamps
    end
  end
end
