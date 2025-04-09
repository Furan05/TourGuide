class CreateDestinations < ActiveRecord::Migration[7.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country
      t.string :city
      t.text :description
      t.string :image
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
