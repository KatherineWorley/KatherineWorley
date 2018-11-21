class Photo < ApplicationRecord
	belongs_to :user

	def thumbnail
		return self.image.variant(resize: '300x300')
	end
end