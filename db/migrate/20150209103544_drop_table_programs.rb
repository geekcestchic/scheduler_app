class DropTablePrograms < ActiveRecord::Migration
  def change
    drop_table :programs
  end
end
