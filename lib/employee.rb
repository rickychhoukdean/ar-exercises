class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40 }
  validates :hourly_rate, numericality: { less_than: 200 }

  belongs_to :store
end
