class Genre < ApplicationRecord
	has_many :products

  def self.search(search)
    if search
      where(['product_name LIKE ? or artist_name LIKE ? or price LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Product.all
    end
  end
end
