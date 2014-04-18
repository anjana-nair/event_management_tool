class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.text :topic
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
