class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.string :fuel_mode
      t.integer :horsepower
      t.string :color
      t.integer :price_per_day
      t.integer :min_age, default: 18

      t.timestamps
    end
  end
end
