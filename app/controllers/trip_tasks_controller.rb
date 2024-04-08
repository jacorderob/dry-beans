class TripTasksController < ApplicationController
  before_action :set_trip_task, only: %i[ show update destroy ]

  # GET /trip_tasks
  # GET /trip_tasks.json
  def index
    @trip_tasks = TripTask.all
  end

  # GET /trip_tasks/1
  # GET /trip_tasks/1.json
  def show
  end

  # POST /trip_tasks
  # POST /trip_tasks.json
  def create
    @trip_task = TripTask.new(trip_task_params)

    if @trip_task.save
      render :show, status: :created, location: @trip_task
    else
      render json: @trip_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trip_tasks/1
  # PATCH/PUT /trip_tasks/1.json
  def update
    if @trip_task.update(trip_task_params)
      render :show, status: :ok, location: @trip_task
    else
      render json: @trip_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trip_tasks/1
  # DELETE /trip_tasks/1.json
  def destroy
    @trip_task.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_task
      @trip_task = TripTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_task_params
      params.require(:trip_task).permit(:trip_id, :type, :adress, :adressee_name, :completed, :message)
    end
end
