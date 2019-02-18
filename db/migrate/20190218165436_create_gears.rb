class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :price
      t.text :category
      t.string :description
      t.string :size
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
