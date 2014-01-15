class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string  :name, null: false
      t.boolean :restricted, null: false, default: true
      t.text    :description
      t.integer :material
      t.integer :artwork_id
      t.timestamps
    end
  end
end
