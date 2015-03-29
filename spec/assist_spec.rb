require 'assist'
require_relative 'fixtures/sample_profile'

describe Assist::Player do

  it 'must be able to import sample data' do
    expect(SAMPLE_DATA[:name]).to eq("Michael Anderson")
  end

    let(:player)  { Assist::Player.new           }
    let(:profile) { double(profile: SAMPLE_DATA) }
    let(:user)    { 'Mikuloctopus'               }
    let(:result)  { player.profile user          }

  describe 'GET profile' do

    it 'can pull in a player profile' do
      expect(result['username']).to eq('Mikuloctopus')
    end
  end

  describe 'Once a profile is loaded' do

    it 'can retrieve the name of the user' do
      expect(result['name']).to eq('Michael Anderson')
    end

    it 'can retrive the user\'s twitter feed' do
      expect(result['links']['twitter']).to eq('https://twitter.com/mikuloctopus')
    end
  end

end
