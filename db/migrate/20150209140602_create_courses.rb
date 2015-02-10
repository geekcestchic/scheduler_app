class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.datetime :start_at
      t.datetime :end_at
      t.integer :classroom_id
    end
  end
end
