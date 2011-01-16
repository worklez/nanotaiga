class FirmProfile < ActiveRecord::Base
  has_many :firm_products
  has_many :offices
  has_many :methodologies
  has_many :source_connections, :class_name => "FirmProfileConnection", :foreign_key => :source_firm_id
  has_many :target_connections, :class_name => "FirmProfileConnection", :foreign_key => :target_firm_id
  has_and_belongs_to_many :firm_types, :join_table => "firm_profiles_firm_types"

  has_one :firm_profile_name
  has_one :firm_profile_origin_date
  has_one :firm_profile_subject
  has_one :firm_profile_atmosphere
  has_one :firm_profile_technologies
  has_one :firm_profile_site

  def name
    self.firm_profile_name.name
  end

  def originated
    self.firm_profile_origin_date.originated
  end

  def subject
    self.firm_profile_subject.subject
  end

  def atmosphere
    self.firm_profile_atmosphere.atmosphere
  end

  def technologies
    self.firm_profile_technologies.technologies
  end

  def site
    self.firm_profile_site.site
  end
end
