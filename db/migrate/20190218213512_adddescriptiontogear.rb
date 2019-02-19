class Adddescriptiontogear < ActiveRecord::Migration[5.2]
  def change
    change_table :gears do |t|
      t.string :description
    end
  end
end
