class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  # can only have one bookmark per movie/list pairing
  validates :movie, uniqueness: { scope: :list }
end
