class FirmProfile < ActiveRecord::Base
  has_many :firm_products
  has_many :offices
  has_many :methodologies
  has_many :source_connections, :class_name => "FirmProfileConnection", :foreign_key => :source_firm_id
  has_many :target_connections, :class_name => "FirmProfileConnection", :foreign_key => :target_firm_id
  has_and_belongs_to_many :firm_types, :join_table => "firm_profiles_firm_types"
end
