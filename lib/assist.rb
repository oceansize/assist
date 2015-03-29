require 'httparty'

module Assist
  class Player

    include HTTParty
    # debug_output $stdout

    AUTH_TOKEN = ENV["ASSIST_AUTH"]

    base_uri "api.dribbble.com/v1"
    format :json

    def profile(user)
      self.class.get("/users/#{user}", :query => { :access_token => AUTH_TOKEN })
    end
  end
end
