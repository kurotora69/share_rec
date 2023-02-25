class GenreTag < ApplicationRecord
  has_many :recreations, through: :rec_genres

  validates :genre_tag, presence: true
end
