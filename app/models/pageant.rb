class Pageant < ApplicationRecord
    mount_uploader :image, ImageUploader
    #validates :pageant_name, presence: true
    #validates :pageant_description, presence: true
    #validates :pageant_category, presence: true
    
end
