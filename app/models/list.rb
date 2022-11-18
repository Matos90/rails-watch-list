class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates_uniqueness_of :name
  # A list has a name (e.g. "Drama", "Comedy", "Classic", "To rewatch", … )
end
