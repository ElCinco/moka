class CustomersController < ApplicationController
  def create
    @customer = Customer.new(customer_params)

    @customer.save
    if @customer.save
      flash[:notice] = "We'll reach out shortly with your quote"
      redirect_to root_path
    else
      render 'home/index'
      ## render 'error_messages'
      ## render 'shared/error_messages'

    end
  end

  def edit
    @customer = Customer.find(params[:id])

    if @customer.update_attributes(customer_params)
      # Handle a successful update.
    else
      # Handle a failed update.
    end
  end

  def customer_params
    params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker, :coverage_amount, :customer_name, :weight, :height, :marriage_status, :children, :income_range, :health_rating, :currently_has_policy)
  end
end
