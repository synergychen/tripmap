class Location < ActiveRecord::Base
  belongs_to :trip

  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :transportation_mode, presence: true
  validates :transportation_time, presence: true
end
