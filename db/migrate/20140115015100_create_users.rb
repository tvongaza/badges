class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :role, null: false, default: 0
      t.string  :name, null: false
      t.integer :avatar_id
      t.boolean :active, null: false, default: true
      t.boolean :admin, null: false, default: false
      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
