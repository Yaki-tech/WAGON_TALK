class Deck < ApplicationRecord
  has_many :questions, -> { order(:position) }, dependent: :destroy
  has_many :sessions, dependent: :destroy
  has_many :ai_requests, dependent: :nullify

  validates :title, presence: true
  validates :source, presence: true, inclusion: { in: %w[manual ai] }

  scope :manual, -> { where(source: "manual") }
  scope :ai_generated, -> { where(source: "ai") }

  def questions_count
    questions.count
  end

  def translated_title
    I18n.locale == :en && title_en.present? ? title_en : title
  end

  def translated_description
    I18n.locale == :en && description_en.present? ? description_en : description
  end
end
