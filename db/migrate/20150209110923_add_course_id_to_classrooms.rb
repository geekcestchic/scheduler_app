class AddCourseIdToClassrooms < ActiveRecord::Migration
  def change
    add_column :classrooms, :course_id, :integer
  end
end
