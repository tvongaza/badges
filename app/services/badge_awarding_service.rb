class BadgeAwardingService
  attr_reader :awarder

  def initialize(awarder)
    @awarder = awarder
  end

  def award(badge, recipient, reason = "")
    return OpenStruct.new(errors: ["You can't award stuff to yourself"]) if recipient == awarder
    type = awarder.role < badge.material ? :recommendations : :awards
    recipient.send(type).create(awarder: awarder, reason: reason, badge: badge)
  end
end
