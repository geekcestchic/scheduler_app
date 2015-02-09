class RenameTableCourses < ActiveRecord::Migration
  def change
    rename_table('table_courses', 'courses')
  end
end
