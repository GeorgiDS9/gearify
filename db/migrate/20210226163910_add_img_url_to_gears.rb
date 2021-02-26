class AddImgUrlToGears < ActiveRecord::Migration[6.0]
  def change
    add_column :gears, :img_url, :string
  end
end
