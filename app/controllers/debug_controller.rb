class DebugController < ApplicationController
  def view_company
    @company = CompanyProfile.find(params[:id])
  end

end
