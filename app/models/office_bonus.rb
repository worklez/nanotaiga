class OfficeBonus < ActiveRecord::Base
  acts_as_commentable

  belongs_to :office
end
