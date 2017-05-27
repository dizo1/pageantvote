class Contestant < ApplicationRecord
    belongs_to :pageant
    validates   :pageant_id, presence: true
end
