class CustomersController < ApplicationController
  def create
    @customer = Customer.new(customer_params)
    @customer.save


    if params[:continue_to_next_form]
      if @customer.save
        session[:current_customer_id] = @customer.id
        @current_cust = session[:current_customer_id]
        logger.debug "user:" + session[:current_customer_id].to_s
        #render 'home/index'
        redirect_to @customer

      else
        render 'home/index' #errors are displayed in view
      end
    else
      # user clicks submit. Redirect to show the newly created record, for example.
      if @customer.save
        session[:current_customer_id] = @customer.id
        logger.debug "user is:" + session[:current_customer_id].to_s

        flash[:notice] = "We'll reach out to you shortly"
        redirect_to root_path
      else
        render 'home/index'  #errors are displayed in view
      end
    end


  end

  def show
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      flash[:success] = "We'll reach out shortly with your quote"
      redirect_to @customer
    else
      render 'faqs'
    end
  end

  def customer_params
    params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker, :coverage_amount, :customer_name, :weight, :height, :marriage_status, :children, :income_range, :health_rating, :currently_has_policy)
  end
end
