class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :stars
      t.string :content
      t.integer :review_parent_id

      t.timestamps

    end
  end
end
