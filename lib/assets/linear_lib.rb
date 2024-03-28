module LinearLib
  class Linear
    include HTTParty
    base_uri 'https://api.linear.app/graphql'
    
    def initialize
      api_key = ENV['LINEAR_API_KEY']
      @options = {
        headers: {
          'Authorization' => api_key,
          'Content-Type' => 'application/json',
        }
      }
    end
    
    def issues
      query_string = <<~GRAPHQL
      {
        issues {
          nodes {
            id
            title
            description
          }
        }
      }
      GRAPHQL

      options = @options.merge({
        body: {
          query: query_string
        }.to_json
      })
      
      response = self.class.post('/issues', options)

      if response.ok?
        response.parsed_response['data']['issues']['nodes']
      else
        nil
      end
    end
  end
  
  def self.linear
    client = Linear.new
  end    
end