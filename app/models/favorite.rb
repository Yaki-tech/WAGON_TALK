class Favorite < ApplicationRecord
  belongs_to :question

  validates :user_identifier, presence: true
  validates :question_id, uniqueness: { scope: :user_identifier, message: "already favorited" }

  scope :for_user, ->(identifier) { where(user_identifier: identifier) }
end
