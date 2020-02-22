class AddUserIdToBookReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :book_reviews, :user_id, :integer
  end
end
