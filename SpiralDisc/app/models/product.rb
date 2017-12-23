class Product < ApplicationRecord
	attachment :image

  has_many :users, through: :carts
	has_many :carts
	has_many :discs, dependent: :destroy
  has_many :orders, through: :order_products
	has_many :order_products
	belongs_to :genre
	accepts_nested_attributes_for :discs, allow_destroy: true

  validates :genre_id, presence: true
  validates :artist_name, presence: true
  validates :product_name, presence: true
  validates :price, presence: true
  validates :label, presence: true
  validates :stock, presence: true
  validates :release_date, presence: true

  def self.search(search)
    if search
      where(['product_name LIKE ? or artist_name LIKE ? or price LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Product.all
    end
  end

end
