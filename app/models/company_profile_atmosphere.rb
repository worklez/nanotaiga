class CompanyProfileAtmosphere < ActiveRecord::Base
  acts_as_commentable
  acts_as_likable
  belongs_to :company_profile
end
