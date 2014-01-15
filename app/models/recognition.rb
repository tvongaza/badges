class Recognition < ActiveRecord::Base
  belongs_to :awarder, foreign_key: :awarder_id, class_name: User
  belongs_to :recipient, foreign_key: :recipient_id, class_name: User
  belongs_to :badge

  validates_inclusion_of :type, in: %w(Award Recommendation)
end
