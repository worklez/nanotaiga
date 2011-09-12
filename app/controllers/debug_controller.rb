class DebugController < ApplicationController
  def view_company
    @company = CompanyProfile.find(params[:id])
    @title = @company.name
  end

end
