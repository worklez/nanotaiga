class DebugController < ApplicationController
  def view_company
    @company = CompanyProfile.find(params[:id])
    @title = @company.name
  end

  def dumb_comment
    comments = Comment
      .where({:commentable_type => params[:type], :commentable_id => params[:id]})
      .map { |comment| { "text" => comment.comment, "name" => comment.user_id || "Anonymous" } }
    render :json => comments
  end
end
