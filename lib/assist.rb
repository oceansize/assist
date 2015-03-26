require 'httparty'

module Assist
  class Player

    include HTTParty

    BASE_URL = 'https://api.dribbble.com/v1/users/' 

  end
end
