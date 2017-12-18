class Disc < ApplicationRecord
	belongs_to :product
	has_many :musics
	accepts_nested_attributes_for :musics
end
