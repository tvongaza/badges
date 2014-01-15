require 'spec_helper'

describe BadgeAwardingService do
  let(:recipient) { User.create!(name: 'Balls', email: 'your@mom.com', password: 'ballsballs') }
  let(:awarder) { User.create!(name: 'Balls 2', email: 'your@dad.com', password: 'ballsballs', role: role) }
  let(:badge) { Badge.create!(name: 'Nice Hat', material: 1) }
  let(:service) { BadgeAwardingService.new(awarder) }

  context "the awarder has enough permissions" do
    let(:role) { 2 }

    it "creates an award" do
      expect(recipient).to be_persisted
      expect { service.award(badge, recipient) }.to change(recipient.awards, :count).from(0).to(1)
      expect(recipient.awards.last.badge.name).to eq badge.name
    end
  end

  context "the awarder doesn't have enough permissions" do
    let(:role) { 0 }

    it "creates a recommendation" do
      
    end
  end
end
