class Review < ApplicationRecord
  belongs_to :airline
  has_many :airline_pictures, as: :imagable

  TITLE_CAPITALIZER = ->(title) { title.upcase }

  before_save :lam

  scope :score, -> { where(score: 3).first.title.parameterize }

  def lam
    self.title = TITLE_CAPITALIZER.call(title)
  end

  validates :score, presence: true
end
