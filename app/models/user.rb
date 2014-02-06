class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :badges, through: :awards
  has_many :awards, foreign_key: :recipient_id, class_name: Award
  has_many :recommendations, foreign_key: :recipient_id, class_name: Recommendation
  has_many :granted_awards, foreign_key: :awarder_id
  has_many :granted_recommendations, foreign_key: :awarder_id

  scope :active, where(active: true)
end
