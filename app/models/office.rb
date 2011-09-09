class Office < ActiveRecord::Base
  acts_as_commentable
  acts_as_likable

  has_many :bonuses, :class_name => "OfficeBonus"
  belongs_to :company_profile
end
