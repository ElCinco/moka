class Customer < ApplicationRecord

  enum gender: [ :man, :woman, :other ]
  enum marriage_status: [ :single, :married, :divorced ]

  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }
  validates :email, presence: true
end
