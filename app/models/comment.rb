class Comment < ApplicationRecord
  validates :user, presence: true, foreign_key: true
  validates :prototype, presence: true, foreign_key: true
  validates :comment, presence: true

  belongs_to :user
  belongs_to :prototype
end
