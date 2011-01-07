class Comment < ActiveRecord::Base
  # TODO: when we will have users, add smth like
  # belongs_to :author, :foreign_key => :opt_author_id, :class_name => "User"
end
