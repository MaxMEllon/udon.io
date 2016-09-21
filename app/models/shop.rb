# == Schema Information
#
# Table name: shops
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  latitude   :decimal(10, )    not null
#  longitude  :decimal(10, )    not null
#  parking    :text(65535)
#  shop_type  :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shop < ApplicationRecord
end
