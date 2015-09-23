class Listing < ActiveRecord::Base
	has_attached_file :image, 
	:styles => { :medium => "150x150#", :thumb => "200x200#" },
	:default_url => "default.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
