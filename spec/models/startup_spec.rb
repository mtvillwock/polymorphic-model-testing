require 'rails_helper'

RSpec.describe Startup, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should have_many :users }
    it { should have_one :profile }
    it { should have_one :location }
  end

  context 'valid Startup' do
    it 'is valid with a name' do
      startup = build(:valid_startup)
      expect(startup).to be_valid
    end
  end

  context 'invalid Startup' do
    it 'is invalid without a name' do
      startup_without_name = build(:startup_without_name)
      expect(startup_without_name).to be_invalid
    end
  end
end
