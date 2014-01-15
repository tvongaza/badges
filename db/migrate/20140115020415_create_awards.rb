class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.text    :reason
      t.integer :recipient_id, null: false
      t.integer :badge_id, null: false
      t.timestamps
    end
  end
end
