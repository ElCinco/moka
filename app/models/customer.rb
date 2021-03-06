class Customer < ApplicationRecord


  enum gender: [ :man, :woman, :other ]
  enum marriage_status: [ :single, :married, :divorced ]

  # validates :email, :presence => true, :if => Proc.new {phone_number.blank?}
  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, :if => Proc.new {phone_number.blank?}, on: :create
  validates :phone_number, :presence => true, :if => Proc.new {email.blank?}, on: :create
  #validates :customer_name, :presence => true, :unless => :new_user?
  validates :customer_name, :presence => true, unless: :skip_name_validation

  attr_accessor :skip_name_validation

end
