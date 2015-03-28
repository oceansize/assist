require 'httparty'

module Assist
  class Player

    include HTTParty

    BASE_URL = 'https://api.dribbble.com/v1/users/' 
    AUTH_TOKEN = ENV["ASSIST_AUTH"]

    def profile
      
    end

  end
end
