class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker))

    @customer.save
    if @customer.save
      redirect_to root_path
      -## render 'confirmation_message'
    else
      -## render 'error_messages'
    end
  end
end
