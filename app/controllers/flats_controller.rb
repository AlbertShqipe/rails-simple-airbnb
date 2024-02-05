class FlatsController < ApplicationController
  before_action :find_flat, only: %i[show edit update destroy]

  def index
    @flats = Flat.all
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flat_params)
    redirect_to flat_path(@flat)
  end

  def edit; end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  def update
    if @flat.update(flat_params)
      redirect_to @flat
    else
      render :edit
    end
  end
  private

  def find_flat
    @flat = Flat.find(params[:id])
  end
  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture)
  end
end
