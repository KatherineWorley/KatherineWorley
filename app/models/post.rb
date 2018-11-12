class Post < ApplicationRecord
	belongs_to :user
	has_many_attached :image
	# has_many_attached :image, style: { medium: "700x500", small: "350x250" }
end