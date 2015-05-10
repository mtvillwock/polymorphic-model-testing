class Startup < ActiveRecord::Base
  has_many :users
  has_one :profile, as: :profileable, dependent: :destroy
  has_one :location, dependent: :destroy
end
