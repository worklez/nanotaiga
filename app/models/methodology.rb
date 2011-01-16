class Methodology < ActiveRecord::Base
  acts_as_commentable
  acts_as_likable

  belongs_to :methodology_base
  belongs_to :firm_profile
end
