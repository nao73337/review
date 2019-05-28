class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :zoom_url
      t.string :range
      t.string :deadline
      t.string :room

      t.timestamps
    end
  end
end
