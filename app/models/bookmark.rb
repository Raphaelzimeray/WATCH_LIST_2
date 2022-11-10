class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 5 }
end
