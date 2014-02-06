class Badge < ActiveRecord::Base
  MATERIALS = {1 => "Bronze", 2 => "Silver", 3 => "Gold"}

  has_many :users, through: :awards
  has_one :artwork

  accepts_nested_attributes_for :artwork

  validates_numericality_of :material, only_integer: true, greater_than: 0, less_than_or_equal_to: MATERIALS.length

  def self.material_name(id)
    MATERIALS[id]
  end

  def material_name
    self.class.material_name
  end
end
