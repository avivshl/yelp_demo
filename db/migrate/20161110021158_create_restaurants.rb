class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :city
      t.string :name
      t.integer :neighborhood
      t.float :average_rating
      t.integer :no_views
      t.text :description
      t.text :address
      t.string :website
      t.string :cover_photo_link

      t.timestamps

    end
  end
end
