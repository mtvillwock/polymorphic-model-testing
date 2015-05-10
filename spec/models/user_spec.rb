require 'rails_helper'

RSpec.describe User, type: :model do
  context 'model validations and associations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :startup_id }
    it { should belong_to :startup }
  end
  context 'valid User' do
    it 'is valid with a name and startup id' do
      startup = create(:valid_startup)
      user = build(:valid_user)
      expect(user).to be_valid
    end
  end

  context 'invalid User' do
    it 'is invalid without a name' do
      user_without_name = build(:user_without_name)
      expect(user_without_name).to be_invalid
    end
    it 'is invalid without a startup' do
      user_without_startup = build(:user_without_startup)
      expect(user_without_startup).to be_invalid
    end
  end
end
