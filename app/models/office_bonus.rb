class OfficeBonus < ActiveRecord::Base
  acts_as_commentable
  acts_as_likable

  belongs_to :office
end
