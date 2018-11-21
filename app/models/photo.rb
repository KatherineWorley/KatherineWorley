class Photo < ApplicationRecord
		def thumbnail
			return self.image.variant(resize: '300x300')
		end		
end
