class Post < ApplicationRecord
	belongs_to :user
	has_many_attached :photo
	# has_many_attached :photo, style: { medium: "700x500", small: "350x250" }
	has_many :comments	
end