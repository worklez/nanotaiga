class FirmProfileName < ActiveRecord::Base
  acts_as_commentable
  belongs_to :firm_profile
end
