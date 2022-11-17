class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # les associations [film, liste] doivent être uniques
  validates :movie_id, presence: true, uniqueness: { scope: :list }
  validates :list_id, presence: true, uniqueness: { scope: :movie }
  validates :comment, length: { minimum: 6 }
end
