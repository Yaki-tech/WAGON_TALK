class Question < ApplicationRecord
  belongs_to :deck
  has_many :favorites, dependent: :destroy

  validates :content, presence: true
  validates :source, presence: true, inclusion: { in: %w[manual ai] }

  scope :ordered, -> { order(:position) }

  def ai_generated?
    source == "ai"
  end
end
