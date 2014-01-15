class Badge < ActiveRecord::Base
  has_many :users, through: :awards
end
