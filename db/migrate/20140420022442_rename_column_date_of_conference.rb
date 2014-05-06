class RenameColumnDateOfConference < ActiveRecord::Migration
  def change
    rename_column :presentations, :date_of_conference, :date_of_presentation
  end
end
