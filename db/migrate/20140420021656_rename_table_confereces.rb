class RenameTableConfereces < ActiveRecord::Migration
  def change
    rename_table :conferences, :presentations
  end
end
