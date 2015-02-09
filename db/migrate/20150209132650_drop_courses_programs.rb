class DropCoursesPrograms < ActiveRecord::Migration
  def change
    drop_table :courses_programs
  end
end
