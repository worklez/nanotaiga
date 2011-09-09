class CompanyProfileOriginDate < ActiveRecord::Base
  acts_as_commentable
  belongs_to :company_profile
end
