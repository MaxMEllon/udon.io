class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :parking, :shop_type, :updated_at
end
