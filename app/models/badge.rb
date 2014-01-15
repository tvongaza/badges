class Badge < ActiveRecord::Base
  has_many :users, through: :awards
  has_one :artwork

  accepts_nested_attributes_for :artwork
end
