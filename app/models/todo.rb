# frozen_string_literal: true
class Todo < ApplicationRecord
  validates :title, presence: true
  validates :status, presence: true

  enum status: { active: 0, in_progress: 1, completed: 2 }
end
