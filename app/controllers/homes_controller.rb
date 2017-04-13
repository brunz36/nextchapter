class HomesController < ApplicationController
  # GET /homes
  def index
    @homes = Home.all
  end

  # GET /homes/1
  def show
    @home = Home.find(params[:id])
  end

  # GET /homes/new
  def new
    @home = Home.new
  end

  # GET /homes/1/edit
  def edit
    @home = Home.find(params[:id])
  end

  # POST /homes
  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to @home, notice: 'Home was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /homes/1
  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to @home, notice: 'Home was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /homes/1
  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to homes_url, notice: 'Home was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def home_params
    params.require(:home).permit(:address, :city, :state, :zip, :number_bedrooms, :number_bathrooms, :sq_ft, :price, :description, :created_by_id, :image_data, :roof, :parking, :lot_size, :hoa, :hoa_fee, :number_of_floors, :year_built)
  end
end