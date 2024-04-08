class TripTasksController < ApplicationController
  # POST /trip_tasks.json
  def create
    @trip_task = TripTask.new(trip_task_params)

    if @trip_task.save
      route = @trip_task.trip.delivery_route
      render route, status: :created, location: route
    else
      render json: @trip_task.errors, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def trip_task_params
      params.require(:trip_task).permit(
        :trip_id, :kind, :address, :addressee_name,
        :completed, :message
      )
    end
end
