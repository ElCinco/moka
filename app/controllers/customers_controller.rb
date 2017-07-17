class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker, :coverage_amount, :customer_name, :weight, :height, :marriage_status, :children, :income_range, :health_rating, :currently_has_policy))

    @customer.save
    if @customer.save
      redirect_to about_path
    else
      render 'home/index'
      ## render 'error_messages'
      ## render 'shared/error_messages'

    end
  end

  def detailedCreate
    @customer = Customer.new(params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker, :coverage_amount, :customer_name, :weight, :height, :marriage_status, :children, :income_range, :health_rating, :currently_has_policy))
    @customer.save

    if @customer.save
      redirect_to faqs_path
    else
      render 'home/index'
    end
  end
end
