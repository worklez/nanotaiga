class Methodology < ActiveRecord::Base
  acts_as_commentable

  belongs_to :methodology_base
  belongs_to :firm_profile
end
