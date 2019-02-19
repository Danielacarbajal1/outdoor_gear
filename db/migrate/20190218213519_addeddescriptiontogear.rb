class Addeddescriptiontogear < ActiveRecord::Migration[5.2]
  def change
    change_table :gears do |t|
      # t.text :description
    end
  end
end
