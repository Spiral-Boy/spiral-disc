class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :carts
    has_many :products, through: :carts
    has_many :orders

    def self.search(search)
	    if search
	      User.where(['name LIKE ? or email LIKE ? or street_address LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
	    else
	      User.all
	    end
	end
end
