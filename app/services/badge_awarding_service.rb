class BadgeAwardingService
  attr_reader :awarder

  def initialize(awarder)
    @awarder = awarder
  end

  def award(badge, recipient, reason = "")
    type = awarder.role < badge.material ? :recommendations : :awards
    recipient.send(type).create!(awarder: awarder, reason: reason, badge: badge)
  end
end
