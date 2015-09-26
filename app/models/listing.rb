class Listing < ActiveRecord::Base
	if Rails.env.development?
		has_attached_file :image,:styles => { :medium => "150x150#", :thumb => "200x200#" },:default_url => "default.png"
	else
		has_attached_file :image,:styles => { :medium => "150x150#", :thumb => "200x200#" },:default_url => "default.png",
		:storage => :dropbox,
		:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
		:path => ":style/:id_:filename"
		validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
		validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	end
end
