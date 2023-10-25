
class SleepStatistic < ApplicationRecord
  belongs_to :user
  belongs_to :sleep

  validates :period, presence: true
  validates :average_sleep_duration, presence: true
  validates :average_sleep_quality, presence: true
end
