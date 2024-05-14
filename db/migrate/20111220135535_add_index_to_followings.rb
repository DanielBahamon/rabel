class AddIndexToFollowings < ActiveRecord::Migration[4.2]
  def change
    add_index :followings, :user_id
    add_index :followings, :followed_user_id
    add_index :followings, [:user_id, :followed_user_id], :unique => true
  end
end
