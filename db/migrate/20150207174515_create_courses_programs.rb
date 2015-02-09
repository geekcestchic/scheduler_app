class CreateCoursesPrograms < ActiveRecord::Migration
  def change
    create_join_table :courses, :programs
  end
end
