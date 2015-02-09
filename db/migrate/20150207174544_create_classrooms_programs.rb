class CreateClassroomsPrograms < ActiveRecord::Migration
  def change
    create_join_table :classrooms, :programs
  end
end
