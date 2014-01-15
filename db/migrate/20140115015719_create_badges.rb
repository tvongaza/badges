class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string  :name, null: false
      t.boolean :restricted, null: false, default: true
      t.text    :description
      t.integer :material, null: false, default: 0
      t.integer :artwork_id
      t.timestamps
    end
  end
end
