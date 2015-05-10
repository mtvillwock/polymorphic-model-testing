require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should validate_presence_of :startup_id }
    it { should belong_to :startup }
    it { should have_one :profile }
    it { should have_one :location }
  end

  context 'valid User' do
    it 'is valid with a name and startup id' do
      startup = create(:valid_startup)
      user = build(:user, name: Faker::Name.name, startup_id: startup.id)
      expect(user).to be_valid
    end
  end

  context 'invalid User' do
    it 'is invalid without a name' do
      expect(build(:user_without_name)).to be_invalid
    end
    it 'is invalid without a startup' do
      expect(build(:user_without_startup)).to be_invalid
    end
  end
end
