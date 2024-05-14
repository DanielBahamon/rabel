class AddStickyToTopics < ActiveRecord::Migration[4.2]
  def change
    add_column :topics, :sticky, :boolean, default: false
    add_index :topics, :sticky
  end
end
