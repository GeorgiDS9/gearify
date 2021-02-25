class ChangePriceTypeToInt < ActiveRecord::Migration[6.0]
  def change
    change_column :gears, :price, :float, using: 'price::float'
  end
end
