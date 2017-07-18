class HomeController < ApplicationController
  def index
    @customer = Customer.new
    #@current_customer = Customer.find_by_id(session[:current_customer_id])

  end

  def about
    @customer = Customer.new
  end

  def faqs
    @customer = Customer.new
  end

end
