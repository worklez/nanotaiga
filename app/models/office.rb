class Office < ActiveRecord::Base
  has_many :office_bonuses
  belongs_to :firm_profile
end
