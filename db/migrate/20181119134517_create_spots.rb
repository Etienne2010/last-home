class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.text :description
      t.float :price
      t.string :image
      t.integer :guest_number
      t.boolean :good
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
