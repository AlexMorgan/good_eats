class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :description, presence: true
  validates :zipcode, presence: true

  def self.categories
    %w(Asian Mexican American)
  end

end
