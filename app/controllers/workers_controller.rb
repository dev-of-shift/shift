class WorkersController < ApplicationController
  def create
    @worker = Worker.new(worker_params)
    @worker.save
    redirect_to places_path
  end

  def worker_params
    params.require(:worker).permit(:name)
  end


end
