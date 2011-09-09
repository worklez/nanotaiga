class CompanyType < ActiveRecord::Base
  has_and_belongs_to_many :company_profiles, :join_table => "company_profiles_company_types"
end
