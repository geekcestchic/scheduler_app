class CreateProgramsUsers < ActiveRecord::Migration
  def change
    create_join_table :programs, :users
  end
end
