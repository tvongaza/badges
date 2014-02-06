class AddTitleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :title, :string
  end

  def down
    remove_column :users, :title
  end
end
