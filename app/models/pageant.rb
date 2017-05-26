class Pageant < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :pageant_name, presence: true, length: { minimum: 5, maximum: 30 }
    validates :pageant_description, presence: true, length: { minimum: 5, maximum: 150 }
    validates :pageant_category, presence: true, length: { minimum: 5, maximum: 30 }
    #validates_inclusion_of :time_zone, in: ActiveSupport::TimeZone.all(&:to_s)
    
    
    default_scope -> {order(updated_at: :desc)}
    
    has_many :contestants, dependent: destroy
    
end
