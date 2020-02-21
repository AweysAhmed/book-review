# frozen_string_literal: true
class CreateBookReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :book_reviews do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
