require 'assist'
require_relative 'fixtures/fixture'

describe Assist::Player do

  it 'must have the base url set to the Dribble API endpoint' do
    expect(Assist::Player::BASE_URL).to eq('https://api.dribbble.com/v1/users/')
  end

  it 'must be able to import sample data' do
    expect(SAMPLE_DATA[:name]).to eq("Michael Anderson")
  end

  describe 'GET profile' do
    let(:player) { Assist::Player.new }

    it 'must have a profile method' do
      expect(player).to respond_to(:profile)
    end

    xit 'must parse the api response from JSON to Hash' do
      
    end

    xit 'must perform the request and get the data' do

    end

  end

end
