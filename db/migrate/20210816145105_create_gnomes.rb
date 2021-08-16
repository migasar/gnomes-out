class CreateGnomes < ActiveRecord::Migration[6.0]
  def change
    create_table :gnomes do |t|
      t.string :name
      t.float :size
      t.float :weight
      t.string :state
      t.string :category
      t.string :gender
      t.string :mood
      t.boolean :outsider
      t.boolean :traveler
      t.boolean :available
      t.float :price
      t.string :color
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
