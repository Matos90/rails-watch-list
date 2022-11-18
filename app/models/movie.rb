class Movie < ApplicationRecord

  has_many :bookmarks
  validates :overview, presence: true
  validates :title, presence: true
  validates_uniqueness_of :title

  # You can’t delete a movie if it is referenced in at least one bookmark

  # A movie must have a unique title and an overview.
  # A list must have a unique name.
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  # The comment of a bookmark cannot be shorter than 6 characters.

end
