class Sleep < ApplicationRecord
  enum quality: {普通: "normal", 良: "good", 最高: "excellent", 悪い: "bad" }
  belongs_to :user
  has_one :sleep_statistic

  validates :quality, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
