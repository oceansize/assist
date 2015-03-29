require 'assist'
require_relative 'fixtures/fixture'

describe Assist::Player do

  it 'must be able to import sample data' do
    expect(SAMPLE_DATA[:name]).to eq("Michael Anderson")
  end

  describe 'GET profile' do
    let(:player) { Assist::Player.new }
    let(:profile) { double(profile: SAMPLE_DATA) }

    it 'can pull in a player profile' do
      result = player.profile 'Mikuloctopus'
      expect(result['name']).to eq('Michael Anderson')
    end

  end

end
