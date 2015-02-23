class Feed < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :feedurl, presence: true, length: { maximum: 255}
end
