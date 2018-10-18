class Mangak < ApplicationRecord
  belongs_to :user
  belongs_to :author
  belongs_to :status
  has_many :chapter
  has_many :rela_genre_manga
end
