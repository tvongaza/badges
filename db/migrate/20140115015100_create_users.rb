class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :role
      t.string  :name, null: false
      t.integer :avatar_id
      t.boolean :active    # Needed?
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
