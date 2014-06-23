class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :user_review, presence: true
  validates :body, presence: true

  def self.reviews
    %w(1 2 3 4 5)
  end
end
