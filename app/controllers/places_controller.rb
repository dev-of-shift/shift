class PlacesController < ApplicationController

def index
  @place = Place.new
  @places = Place.all
  @worker = Worker.new
  @workers = Worker.all
  @worklist = Worklist.new
  @worklists = Worklist.all
  @shop = Shop.new
  @shops = Shop.all
end

def create
  @place = Place.new(place_params)
  @place.save
  redirect_to places_path

end

def update
  @place = Place.find(params[:id])
  @place.update(place_params)
  redirect_to places_path
end

def destroy
  @place = Place.find(params[:id])
  @place.destroy
  redirect_to places_path
end

private

def place_params
  params.require(:place).permit(:name)
end

def worker_params
  params.require()
end


end
