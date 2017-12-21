class Disc < ApplicationRecord
	belongs_to :product
	has_many :musics, dependent: :destroy
	accepts_nested_attributes_for :musics, allow_destroy: true
end
