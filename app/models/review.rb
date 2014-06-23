class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :name, presence: true
  validates :address, presence: true

  def self.reviews
    %w(1 2 3 4 5)
  end
end
