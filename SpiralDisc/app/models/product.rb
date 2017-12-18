class Product < ApplicationRecord
	attachment :image

	has_many :carts
	has_many :discs
	has_many :order_products
	belongs_to :genre
	accepts_nested_attributes_for :discs

  def self.search(search)
    if search
      Product.where(['product_name LIKE ? or artist_name LIKE ? or price LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Product.all
    end
  end

end
