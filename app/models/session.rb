class Session < ApplicationRecord
  belongs_to :deck

  validates :session_token, presence: true, uniqueness: true

  before_validation :generate_token, on: :create
  after_create :initialize_order

  def current_question
    return nil if shuffled_order.blank?

    question_id = shuffled_order[current_index]
    Question.find_by(id: question_id)
  end

  def next_question!
    return nil if last_question?

    update!(current_index: current_index + 1)
    current_question
  end

  def previous_question!
    return nil if first_question?

    update!(current_index: current_index - 1)
    current_question
  end

  def shuffle!
    update!(shuffled_order: shuffled_order.shuffle, current_index: 0)
    current_question
  end

  def first_question?
    current_index.zero?
  end

  def last_question?
    current_index >= shuffled_order.length - 1
  end

  def progress
    "#{current_index + 1}/#{shuffled_order.length}"
  end

  private

  def generate_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

  def initialize_order
    question_ids = deck.questions.pluck(:id)
    update!(shuffled_order: question_ids)
  end
end
