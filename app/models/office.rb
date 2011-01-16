class Office < ActiveRecord::Base
  acts_as_commentable

  has_many :bonuses, :class_name => "OfficeBonus"
  belongs_to :firm_profile
end
