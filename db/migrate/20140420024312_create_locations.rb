class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :pincode
      t.string :country

      t.timestamps
    end
  end
end
