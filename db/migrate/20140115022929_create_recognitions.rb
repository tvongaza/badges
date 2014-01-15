class CreateRecognitions < ActiveRecord::Migration
  def change
    create_table :recognitions do |t|
      t.string  :type, limit: 14
      t.text    :reason
      t.integer :recipient_id, null: false
      t.integer :badge_id, null: false
      t.timestamps
    end
  end
end
