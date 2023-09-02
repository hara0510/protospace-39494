class Comment < ApplicationRecord
  validates :user, presence: true
  validates :prototype, presence: true
  validates :comment, presence: true

  belongs_to :user
  belongs_to :prototype
end
