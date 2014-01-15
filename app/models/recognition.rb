class Recognition < ActiveRecord::Base
  self.abstract_class = true

  belongs_to :user
  belongs_to :badge
end
