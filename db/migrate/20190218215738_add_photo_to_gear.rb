class AddPhotoToGear < ActiveRecord::Migration[5.2]
  def change
    add_column :gears, :photo, :string
  end
end
