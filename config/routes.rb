# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :static_pages
  root 'static_pages#index'
  resources :book_reviews
  authenticated :user do
    root 'book_reviews#index', as: 'authenticated_root'
  end
end
