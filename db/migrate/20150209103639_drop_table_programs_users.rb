class DropTableProgramsUsers < ActiveRecord::Migration
  def change
    drop_table :programs_users
  end
end
