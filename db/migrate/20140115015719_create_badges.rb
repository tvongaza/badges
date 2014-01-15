class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string  :name
      t.boolean :restricted
      t.text    :description
      t.integer :material
      t.integer :artwork_id
      t.timestamps
    end
  end
end
