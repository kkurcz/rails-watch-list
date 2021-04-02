class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # the moviews are stored in bookmarks so need to use through
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end
