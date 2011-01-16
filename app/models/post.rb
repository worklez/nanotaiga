class Post < ActiveRecord::Base
  acts_as_commentable

  belongs_to :firm_profile
  belongs_to :author, :foreign_key => :author_id, :class_name => "User"
end
