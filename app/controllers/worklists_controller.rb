class WorklistsController < ApplicationController
  def create
    @worklist = Worklist.new(worklist_params)
    @worklist.save
    redirect_to places_path
  end

  def update
    @worklist = Worklist.find(params[:id])
    @worklist.update(worklist_params)
    redirect_to places_path
  end

  def destroy
    @worklist = Worklist.find(params[:id])
    @worklist.destroy
    redirect_to places_path
  end


  private
  def worklist_params
    params.require(:worklist).permit(:list_num, :list_day, :list_hour, :list_minutes)
  end
end
