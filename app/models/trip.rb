class Trip < ActiveRecord::Base
  has_many :locations

  validates :date, presence: true
  validates :city, presence: true
end
