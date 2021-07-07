class Chapter < ApplicationRecord
  belongs_to :mangak
  default_scope -> { order(created_at: :desc) }
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: proc { |attributes| attributes["photo"].blank? }
  validates :mangak_id, presence: true
  validates :name_chapter, presence: true, length: {maximum: 30}
end
