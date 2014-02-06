class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :badge_id, null: false
      t.binary  :image
      t.timestamps
    end
  end
end
