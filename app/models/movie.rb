class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validate :title, presence: true, uniqueness: true
  validate :overview, presence: true
end
