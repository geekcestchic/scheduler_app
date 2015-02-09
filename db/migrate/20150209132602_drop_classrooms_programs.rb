class DropClassroomsPrograms < ActiveRecord::Migration
  def change
    drop_table :classrooms_programs
  end
end
