require "rest-client"
require "json"

class Fetch

def self.answers
    sleep(10)

    json_new = RestClient.get("https://api.typeform.com/forms/w7pbCVqU/responses", headers={
      "Authorization" => "Bearer 4WUCgQpioaKanqcEE4PMTdDHSLLTHj5May5ENfhNdeay"
    })
     json_parsed = JSON.parse(json_new)
    return json_parsed

  end

end




p Fetch.answers
