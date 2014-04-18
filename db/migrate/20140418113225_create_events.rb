class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date_of_event
      t.text :description
      t.text :presenters
      t.text :companies
      t.text :address
      t.text :contact

      t.timestamps
    end
  end
end
