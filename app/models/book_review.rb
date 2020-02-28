# frozen_string_literal: true

# BookReview Model with validations
class BookReview < ApplicationRecord
  validates :title, length: { minimum: 2 }, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :review, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, presence: true
  belongs_to :user
end
