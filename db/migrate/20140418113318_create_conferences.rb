class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.text :topic
      t.date :date_of_conference
      t.text :description
      t.text :presenters
      t.text :companies
      t.text :address
      t.text :contact
      t.references :event, index: true

      t.timestamps
    end
  end
end
