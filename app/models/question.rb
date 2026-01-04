class Question < ApplicationRecord
  belongs_to :deck
  has_many :favorites, dependent: :destroy

  validates :content, presence: true
  validates :source, presence: true, inclusion: { in: %w[manual ai] }

  scope :ordered, -> { order(:position) }

  def ai_generated?
    source == "ai"
  end

  def translated_content
    I18n.locale == :en && content_en.present? ? content_en : content
  end
end
