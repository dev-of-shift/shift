class ShopsController < ApplicationController
  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to places_path
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to places_path
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to places_path
  end




private
  def shop_params
    params.require(:shop).permit(:name)
  end

end
