class AirlinePicture < ApplicationRecord
  belongs_to :imagable, polymorphic: true
end
