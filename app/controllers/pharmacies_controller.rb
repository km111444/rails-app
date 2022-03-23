class PharmaciesController < ApplicationController
  def index
    @pharmacies = Pharmacy.all
      @markers = @pharmacies.geocoded.map do |pharmacy|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { pharmacy: pharmacy })
      }
      end
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
    @pharmacy = Pharmacy.find(params[:id])
    @pharmacy.destroy
  end
end
