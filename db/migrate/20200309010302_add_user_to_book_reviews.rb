class AddUserToBookReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :book_reviews, :user
  end
end
