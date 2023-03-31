class Sighting < ApplicationRecord
    belongs_to :animal
    validates :latitude, :longitude, :date, :animal_id,  presence: true
end
