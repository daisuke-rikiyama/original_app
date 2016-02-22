class MessageBoard < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 50 }
end
