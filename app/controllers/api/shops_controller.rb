class Api::ShopsController < ApiController
  def index
    @shops = Shop.all
    render json: @shops, each_serializer: ShopSerializer
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end
end
