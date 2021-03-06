class AddressesController < ApplicationController
  def index
    render 'new'
  end

  def new;
  end

  def create
    @address = Address.new(address_params)
    @address.save
    render 'new'
  end

  private

  def address_params
    params.permit(:street_address, :city, :state, :zip_code)
  end
end
