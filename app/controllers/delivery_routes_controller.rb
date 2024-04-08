class DeliveryRoutesController < ApplicationController
  before_action :set_delivery_route, only: %i[ show update destroy ]

  # GET /delivery_routes
  # GET /delivery_routes.json
  def index
    @delivery_routes = DeliveryRoute.all
  end

  # GET /delivery_routes/1
  # GET /delivery_routes/1.json
  def show
  end

  # POST /delivery_routes
  # POST /delivery_routes.json
  def create
    @delivery_route = DeliveryRoute.new(delivery_route_params)

    if @delivery_route.save
      render :show, status: :created, location: @delivery_route
    else
      render json: @delivery_route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_routes/1
  # PATCH/PUT /delivery_routes/1.json
  def update
    if @delivery_route.update(delivery_route_params)
      render :show, status: :ok, location: @delivery_route
    else
      render json: @delivery_route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_routes/1
  # DELETE /delivery_routes/1.json
  def destroy
    @delivery_route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_route
      @delivery_route = DeliveryRoute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_route_params
      params.require(:delivery_route).permit(:name, :distance)
    end
end
