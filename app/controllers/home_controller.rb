class HomeController < ApplicationController
  def index
    @customer = Customer.new
  end

  def about
    @customer = Customer.new
  end

  def faqs
    @customer = Customer.new
  end

  def submit_contact_form
    tracker do |t|
      t.facebook_pixel :track, { type: 'CompleteRegistration', options: { value: 25, currency: 'USD' } }
    end
  end

  def submit_quote_form
    tracker do |t|
      t.facebook_pixel :track, { type: 'Lead', options: { value: 10, currency: 'USD' } }
    end
  end
end
