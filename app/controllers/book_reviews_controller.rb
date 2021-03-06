# frozen_string_literal: true

class BookReviewsController < ApplicationController
  before_action :find_book_review, only: %i[show edit update destroy]
  def index
    @book_reviews = BookReview.advanced_search(params[:search])
  end

  def show
    # this is setu in the before_action
  end

  def new
    @book_review = current_user.book_reviews.build
  end

  def create
    @book_review = current_user.book_reviews.build(book_review_params)
    if @book_review.save
      redirect_to @book_review
    else
      render 'new'
    end
  end

  def edit
    # this is setu in the before_action
  end

  def update
    if @book_review.update(book_review_params)
      redirect_to @book_review
    else
      render 'edit'
    end
  end

  def destroy
    @book_review.destroy
    redirect_to book_reviews_path
  end

  private

  def find_book_review
    @book_review = BookReview.find(params[:id])
  end

  def book_review_params
    params.require(:book_review)
          .permit(:title, :first_name, :last_name, :review, :rating, :search)
  end
end
