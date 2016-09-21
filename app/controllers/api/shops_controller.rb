class Api::ShopsController < ApiController
  swagger_controller :shops, 'Shops'

  swagger_api :index do
    summary 'Fetches all shops'
    response :ok, 'Success', [:Shop]
  end

  swagger_api :show do
    summary 'Fetch shop by id'
    param :path, :id, :integer, :required, 'Shop Id'
    response :ok, 'Success', :Shop
  end

  swagger_model :Shop do
    description 'A Shop object'
    property :id, :integer, :required, 'Shop Id'
    property :name, :string, :required, 'Name'
    property :latitude, :decimal, :required, 'lat'
    property :longitude, :decimal, :optional, 'lot'
    property :shop_type, :string, :optional, 'Type'
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
