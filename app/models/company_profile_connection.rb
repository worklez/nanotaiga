class CompanyProfileConnection < ActiveRecord::Base
  acts_as_commentable
  acts_as_likable

  belongs_to :source, :class_name => "CompanyProfile", :foreign_key => :source_company_id
  belongs_to :target, :class_name => "CompanyProfile", :foreign_key => :target_company_id
end
