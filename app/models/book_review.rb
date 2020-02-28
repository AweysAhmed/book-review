# frozen_string_literal: true

# BookReview Model with validations
class BookReview < ApplicationRecord
  validates :title, length: { minimum: 2 }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :review, presence: true
  validates :rating, presence: true
  belongs_to :user
end
