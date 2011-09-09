class CompanyProfile < ActiveRecord::Base
  acts_as_commentable

  has_many :company_products
  has_many :offices
  has_many :methodologies
  has_many :source_connections, :class_name => "CompanyProfileConnection", :foreign_key => :source_company_id
  has_many :target_connections, :class_name => "CompanyProfileConnection", :foreign_key => :target_company_id
  has_and_belongs_to_many :company_types, :join_table => "company_profiles_company_types"

  has_one :company_profile_name
  has_one :company_profile_origin_date
  has_one :company_profile_subject
  has_one :company_profile_atmosphere
  has_one :company_profile_technologies
  has_one :company_profile_site

  def name
    self.company_profile_name.name if self.company_profile_name
  end

  def originated
    self.company_profile_origin_date.originated if self.company_profile_origin_date
  end

  def subject
    self.company_profile_subject.subject if self.company_profile_subject
  end

  def atmosphere
    self.company_profile_atmosphere.atmosphere if self.company_profile_atmosphere
  end

  def technologies
    self.company_profile_technologies.technologies if self.company_profile_technologies
  end

  def site
    self.company_profile_site.site if self.company_profile_site
  end

  def name_comments
    self.company_profile_name.comments if self.company_profile_name
  end

  def originated_comments
    self.company_profile_origin_date.comments if self.company_profile_origin_date
  end

  def subject_comments
    self.company_profile_subject.comments if self.company_profile_subject
  end

  def atmosphere_comments
    self.company_profile_atmosphere.comments if self.company_profile_atmosphere
  end

  def technologies_comments
    self.company_profile_technologies.comments if self.company_profile_technologies
  end

  def site
    self.company_profile_site.site if self.company_profile_site
  end
end
