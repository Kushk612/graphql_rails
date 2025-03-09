class Airline < ApplicationRecord
  has_many :reviews
  has_many :airline_pictures, as: :imagable
end
