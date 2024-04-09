# frozen_string_literal: true

class DeliveryRoutesController < ApplicationController
  before_action :set_delivery_route, only: %i[show]

  # GET /delivery_routes/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_delivery_route
    @delivery_route = DeliveryRoute.find(params[:id])
  end
end
