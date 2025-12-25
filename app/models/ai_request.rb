class AiRequest < ApplicationRecord
  belongs_to :deck, optional: true

  validates :status, presence: true, inclusion: { in: %w[pending processing completed failed] }

  scope :pending, -> { where(status: "pending") }
  scope :completed, -> { where(status: "completed") }
  scope :failed, -> { where(status: "failed") }

  def completed?
    status == "completed"
  end

  def failed?
    status == "failed"
  end
end
