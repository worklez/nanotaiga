class FirmProfileConnection < ActiveRecord::Base
  acts_as_commentable

  belongs_to :source, :class_name => "FirmProfile", :foreign_key => :source_firm_id
  belongs_to :target, :class_name => "FirmProfile", :foreign_key => :target_firm_id
end
