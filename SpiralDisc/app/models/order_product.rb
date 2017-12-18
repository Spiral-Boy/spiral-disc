class OrderProduct < ApplicationRecord
	belongs_to :orderProduct
	belongs_to :product
end
