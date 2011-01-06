class Office < ActiveRecord::Base
  has_many :bonuses, :class_name => "OfficeBonus"
  belongs_to :firm_profile
end
