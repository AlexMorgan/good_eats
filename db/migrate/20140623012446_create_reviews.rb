class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :review
      t.text :body
      t.integer :restaurant_id
      t.string :timestamps
    end
  end
end
