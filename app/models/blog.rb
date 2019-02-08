class Blog < ApplicationRecord
	paginates_per 5
	mount_uploader :image, BlogPhotoUploader
	def next
        self.class.where("id > ?", id).first
    end

    def prev
        self.class.where("id < ?", id).last
    end
end
