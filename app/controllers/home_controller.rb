class HomeController < ApplicationController
  def index
  end

  def faqs
  end

  def x ## placeholder for the simple form action
    tracker do |t|
      t.facebook_pixel :track, { type: 'CompleteRegistration', options: { value: 25, currency: 'USD' } }
    end
  end

  def y ## placeholder for the detailed form action
    tracker do |t|
      t.facebook_pixel :track, { type: 'Lead', options: { value: 10, currency: 'USD' } }
    end
  end
end
