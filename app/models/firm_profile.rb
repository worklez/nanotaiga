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
    self.firm_profile_name.name if self.firm_profile_name
  end

  def originated
    self.firm_profile_origin_date.originated if self.firm_profile_origin_date
  end

  def subject
    self.firm_profile_subject.subject if self.firm_profile_subject
  end

  def atmosphere
    self.firm_profile_atmosphere.atmosphere if self.firm_profile_atmosphere
  end

  def technologies
    self.firm_profile_technologies.technologies if self.firm_profile_technologies
  end

  def site
    self.firm_profile_site.site if self.firm_profile_site
  end
end
