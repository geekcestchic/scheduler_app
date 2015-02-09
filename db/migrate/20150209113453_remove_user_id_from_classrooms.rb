class RemoveUserIdFromClassrooms < ActiveRecord::Migration
  def change
    remove_column :classrooms, :user_id, :integer
  end
end
