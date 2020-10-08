class Entry < ApplicationRecord
	mount_uploader :image, ImageUploader
end
