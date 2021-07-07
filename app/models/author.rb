class Author < ApplicationRecord
  has_many :mangaks
  validates :name, presence: true,
    length: {maximum: 25}
end
