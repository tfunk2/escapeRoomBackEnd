class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :seconds_to_complete
      t.integer :total_misses

      t.timestamps
    end
  end
end
