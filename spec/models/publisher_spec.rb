require 'rails_helper'

RSpec.describe Publisher, type: :model do
  it { should validate_presence_of(:name) }

  it "should be false with nil as name" do
    publisher = Publisher.new(name: nil)
    expect(publisher.valid?).to be false
  end

  it "should be invalid with empty name" do
    publisher = Publisher.new(name: '')
    expect(publisher.valid?).to be false
  end

  it "should be valid with a name" do
    publisher = Publisher.new(name: 'Oxford')
    expect(publisher.valid?).to be true
  end
end
