class Admin::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create(shop_params)
    redirect_to action: 'index'
  end

  private

  def shop_params
    params.require(:shop).permit(
      [
        :name,
        :latitude,
        :longitude,
        :parking,
        :shop_type
      ]
    )
  end
end
