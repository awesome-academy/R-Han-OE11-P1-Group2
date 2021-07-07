class User < ApplicationRecord
  has_many :mangak
  has_many :comments, dependent: :destroy
  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id",
    dependent: :destroy
  has_many :following, through: :active_relationships,  source: :followed
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
