# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookReview, type: :model do
  context 'validations' do
    it 'ensures the presence of a book title' do
      book = BookReview.new(title: '').save
      expect(book).to eq(false)
    end

    it 'ensures book title has a minimum of two charcters' do
      book = BookReview.new(title: 'w').save
      expect(book).to eq(false)
    end
  end
end
