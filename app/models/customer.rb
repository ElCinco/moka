class Customer < ApplicationRecord
  enum gender: [ :male, :female, :other ]
  enum marriage_status: [ :single, :married, :divorced ]
end
