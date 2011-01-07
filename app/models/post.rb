class Post < ActiveRecord::Base
  belongs_to :firm_profile
  # TODO: when we will have users, add smth like
  # belongs_to :author, :foreign_key => :author_id, :class_name => "User"
end
