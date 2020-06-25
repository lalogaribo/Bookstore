require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should validate_presence_of(:given_name) }
  it { should validate_presence_of(:family_name) }
  it { should have_many(:books) }

  it "should be invalid with 'nil' as given_name " do
    author = Author.new(given_name: nil, family_name: 'Mendoza')
    expect(author.valid?).to be false
  end

  it "should be invalid with '' as given_name " do
    author = Author.new(given_name: '', family_name: 'Mendoza')
    expect(author.valid?).to be false
  end

  it "should be invalid with '' as family_name " do
    author = Author.new(given_name: 'Eduardo', family_name: '')
    expect(author.valid?).to be false
  end

  it "should be invalid with 'nil' as family_name " do
    author = Author.new(given_name: 'Garibo', family_name: nil)
    expect(author.valid?).to be false
  end

  it 'should be valid with valid given_name and family_name' do
    author = Author.new(given_name: 'Eduardo', family_name: 'Mendoza')
    expect(author.valid?).to be true
  end
end
