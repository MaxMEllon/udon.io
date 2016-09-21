class Api::ShopsController < ApiController
  swagger_controller :shops, 'Shops'

  swagger_api :index do
    summary 'Fetches all shops'
    response :ok, 'Success', [:Shop]
    response :unauthorized
    response :not_acceptable
  end

  swagger_api :shops do
    summary 'Fetches all shops'
    param :path, :id, :integer, :required, 'Shop Id'
    response :ok, 'Success', :Shop
    response :unauthorized
    response :not_acceptable
  end

  swagger_model :Shop do
    description 'A Shop object'
    property :id, :integer, :required, 'Shop Id'
    property :name, :string, :required, 'Name'
    property :latitude, :string, :required, 'lat'
    property :longitude, :string, :required, 'lot'
    property :shop_type, :string, :required, 'Type'
  end

  def index
    @shops = Shop.all
    render json: @shops, each_serializer: ShopSerializer
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end
end
