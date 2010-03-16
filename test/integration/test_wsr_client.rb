require "test/test_helper"
require "test/unit"

require "wsr_client"

class TestWsrClient < Test::Unit::TestCase
  
  describe WsrClient, "gem" do
    
    before(:each) do
      # preprod
      #@endpoint_url = "https://reports.ppship.scea.com/wwsgd/SOAP/wsr_server.php"
      
      # prod
      @endpoint_url = "https://reports.ship.scea.com/wwsgd/SOAP/wsr_server.php"

      @wsr_client_object = WsrClient.new(@endpoint_url, "gpappdev", "st33l3rs")
    end

    context "when connecting to WSR" do
      it "should not be null" do
        @wsr_client_object.should_not be_nil
      end
    end
    
    context "when getting project data" do
      project_count = 0
      it "should be equal to number of projects in WSR" do
        results = @wsr_client_object.getProjectData("isRhq" => "false")
        results.each do |result|
          project_count += 1
        end
        #602 for prod as of 15-Sep-09
        project_count.should == 602
      end
    end
    
  end
  
end