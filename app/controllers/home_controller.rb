class HomeController < ApplicationController
  def index
    #@customer = Customer.new
    #@current_customer = Customer.find_by_id(session[:current_customer_id])
  end

  def quote
    @customer = Customer.new
  end

  def information
    @customer = Customer.new
  end

  def about
    end

  def faqs
  end

end
