class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :date
      t.string :start_time
      t.string :end_time

      t.timestamps null: false
    end
  end
end
