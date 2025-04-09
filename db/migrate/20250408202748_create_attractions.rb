class CreateAttractions < ActiveRecord::Migration[7.1]
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :category
      t.string :image
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
