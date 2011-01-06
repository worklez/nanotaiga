class Methodology < ActiveRecord::Base
  belongs_to :methodology_base
  belongs_to :firm_profile
end
