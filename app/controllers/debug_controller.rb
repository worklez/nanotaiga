class DebugController < ApplicationController
  def view_firm
    @firm = FirmProfile.find(params[:id])
  end

end
