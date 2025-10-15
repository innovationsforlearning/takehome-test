class WordPart < ApplicationRecord
  belongs_to :phonics_level

  validates :label, presence: true
  # Position determines the order flashcards are displayed

  enum :status, { mastered: "mastered", needs_work: "needs_work" }, validate: { allow_nil: true }
end
