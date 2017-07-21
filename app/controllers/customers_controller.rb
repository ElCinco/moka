class CustomersController < ApplicationController

  include SmartListing::Helper::ControllerExtensions
  helper  SmartListing::Helper

  def index
    @customers = smart_listing_create :customers, Customer.all, partial: "customers/list"
  end


  def create
    @customer = Customer.new(customer_params)
    @customer.save


    if params[:continue_to_next_form]
      @customer.skip_name_validation = true
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
      @customer.skip_name_validation = true
      if @customer.save
        session[:current_customer_id] = @customer.id
        logger.debug "user is:" + session[:current_customer_id].to_s

        flash[:notice] = "We'll reach out to you shortly"
        redirect_to root_path
      else
        render '/home/index'  #errors are displayed in view
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
      session[:customer_updated] = true
    else
      render '/customers/show'
    end
  end

  def customer_params
    params.require(:customer).permit(:age, :gender, :email, :phone_number, :state, :smoker, :coverage_amount, :customer_name, :weight, :height, :marriage_status, :children, :income_range, :health_rating, :currently_has_policy, :has_been_contacted)
  end
end
