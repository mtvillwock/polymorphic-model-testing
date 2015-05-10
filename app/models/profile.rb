class Profile < ActiveRecord::Base
  belongs_to :profileable, polymorphic: true
  validates_presence_of :description, :profileable_id, :profileable_type
  validates_uniqueness_of :description
end
