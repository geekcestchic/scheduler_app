class RemoveCourseIdFromClassrooms < ActiveRecord::Migration
  def change
    remove_column :classrooms, :course_id, :integer
  end
end
