class Customer < ApplicationRecord
  enum gender: [ :male, :female, :other ]
end
