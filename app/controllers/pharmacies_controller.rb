class PharmaciesController < ApplicationController
  def index
    @pharmacies = Pharmacy.all
  end

  def show
  end

  def new
    @pharmacy = Pharmacy.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
