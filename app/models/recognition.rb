class Recognition < ActiveRecord::Base
  self.abstract_class = true
  self.table_name = 'recognitions'

  belongs_to :awarder, foreign_key: :awarder_id, class_name: User
  belongs_to :recipient, foreign_key: :recipient_id, class_name: User
  belongs_to :badge
end
