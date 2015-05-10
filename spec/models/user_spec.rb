require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :startup_id }
    it { should belong_to :startup }
  end
  context 'valid User' do
    it 'is valid with a name and startup id' do
      startup = create(:valid_startup)
      user = build(:user, name: Faker::Name.name, startup_id: startup.id)
      expect(user).to be_valid
    end
  end

  context 'invalid User' do

  end
end
