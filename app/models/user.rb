class User < ApplicationRecord
  has_many :mangak
  has_many :comments, dependent: :destroy
  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id",
    dependent: :destroy
  has_many :following, through: :active_relationships,  source: :followed
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.password_confirmation = user.password
      user.name = auth.info.name
    end
  end
=======
         :recoverable, :rememberable, :validatable
>>>>>>> remote_authauthentication
end
