class RemoveUserFromBookReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :book_reviews, :user_id, :integer
  end
end
