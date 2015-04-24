class User < ActiveRecord::Base
  has_one :startup
  has_one :profile, dependent: :destroy
  has_one :location, dependent: :destroy
end
