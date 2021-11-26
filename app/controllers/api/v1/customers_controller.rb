class Api::V1::CustomersController < ApplicationController
  def index
    @customers = Customer.all.order(:id)
    render json: @customers
  end
end
