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

  def self.find_for_google_oauth2(access_token)
    return unless access_token["extra"]["raw_info"]["hd"] = "goclio.com"
    User.where(:email => access_token.info["email"]).first || User.create_user_from_token(access_token.info)
  end

  def self.create_user_from_token(data)
    User.create(
      name: data["name"],
      email: data["email"],
      password: Devise.friendly_token[0, 20]
    )
  end


end
