class WorkersController < ApplicationController
  def create
    @worker = Worker.new(worker_params)
    @worker.save
    redirect_to places_path
  end

  def update
    @worker = Worker.find(params[:id])
    @worker.update(worker_params)
    redirect_to places_path
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    redirect_to places_path
  end




private
  def worker_params
    params.require(:worker).permit(:name, :place_id)
  end


end
