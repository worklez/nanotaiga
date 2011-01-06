require 'spec_helper'

describe DebugController do

  describe "GET 'view_firm'" do
    it "should be successful" do
      get 'view_firm'
      response.should be_success
    end
  end

end
