#http://eric-price.net/blog/rails-api-wrapper/
require 'commerce_deserializer'

class ApiConnector
  include HTTParty

  @config  = JSON.parse(File.read(Rails.root.to_s + "/api_config.json"))
  

  def self.get_commerces
    url_commerces   = "#{@config["base_url"]}#{@config["endpoints"]["commerces"]}"
    response        = HTTParty.get(
                        url_commerces
                      )
    parsed_response = JSON.parse(response.body, symbolize_names: true)
    
    if response.success?
      CommerceDeserializer.deserialize!(parsed_response)
    else
      raise response.response
    end

  end
end
