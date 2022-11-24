class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :list, uniqueness: { scope: :movie,
  message: "Only one reservation per guest per day is permitted"}
end
