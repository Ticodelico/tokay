class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  # GET /restaurants or /restaurants.json
  def index
    @pagy, @restaurants =
      pagy_countless(FindRestaurants.new.call(params), items: 12)
  end

  # GET /restaurants/1 or /restaurants/1.json
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # GET /restaurants/1/edit
  def edit
  end

  # POST /restaurants or /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html do
          redirect_to restaurant_url(@restaurant),
                      notice: "Restaurant was successfully created."
        end
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @restaurant.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /restaurants/1 or /restaurants/1.json
  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(restaurant_params)
      redirect_to restaurant_url(@restaurant),
                  notice: "Restaurant was successfully created."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1 or /restaurants/1.json
  def destroy
    @restaurant.destroy

    respond_to do |format|
      format.html do
        redirect_to restaurants_url,
                    notice: "Restaurant was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :reception_number,
      :contact_number,
      :email,
      :facebook_site,
      :web_site,
      :active
    )
  end
end
