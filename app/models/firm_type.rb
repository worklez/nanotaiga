class FirmType < ActiveRecord::Base
  has_and_belongs_to_many :firm_profiles, :join_table => "firm_profiles_firm_types"
end
