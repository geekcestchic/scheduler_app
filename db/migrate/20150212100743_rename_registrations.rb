class RenameRegistrations < ActiveRecord::Migration
  def change
    rename_table :registrations, :enrolments
  end
end
