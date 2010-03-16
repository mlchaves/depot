require "pp"

require "wsr_client"

class RunWsrClient
  
  # preprod
  @endpoint_url = "https://reports.ppship.scea.com/wwsgd/SOAP/wsr_server.php"
      
  # prod
  #@endpoint_url = "https://reports.ship.scea.com/wwsgd/SOAP/wsr_server.php"

  @wsr_client_object = WsrClient.new(@endpoint_url, "gpappdev", "st33l3rs")
    
  project_count = 0
  results = @wsr_client_object.getProjectData("isRhq" => "false")
  results.each do |result|
    project_count += 1
  end

  pp project_count
  
end