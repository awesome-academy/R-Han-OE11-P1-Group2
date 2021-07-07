class Mangak < ApplicationRecord
  has_many :chapters
  has_many :comments, dependent: :destroy
  has_many :passive_relationships, class_name:  "Relationship", foreign_key: "followed_id",
    dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  belongs_to :author
  belongs_to :genre
  validates :name, presence: true,
    length: {maximum: 25}
  validates :description, presence: true, length: {maximum: 250}
  validates :author_id, presence: true
  validates :genre_id, presence: true
  mount_uploader :picture, PictureUploader
  validates :picture, presence: true
  is_impressionable

  scope :search, -> (mangak_name) {where("name LIKE ?", "%#{mangak_name}%")}
  default_scope -> { order(name: :desc) }
end
