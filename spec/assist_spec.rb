require 'assist'
require_relative 'fixtures/sample_profile'

describe Assist::Player do

  it 'must be able to import sample data' do
    expect(SAMPLE_DATA[:name]).to eq("Michael Anderson")
  end

  let(:fake_class) { Class.new                              }
  let(:player)     { stub_const("Assist::Player", fake_class) }

  describe 'GET profile' do

    it 'can pull in a player profile' do
      allow(player).to receive(:profile).and_return(SAMPLE_DATA)
      expect(player.profile[:username]).to eq('Mikuloctopus')
    end
  end

  describe 'Once a profile is loaded' do

    it 'can retrieve the name of the user' do
      allow(player).to receive(:profile).and_return(SAMPLE_DATA)
      expect(player.profile[:name]).to eq('Michael Anderson')
    end

    it 'can retrive the user\'s twitter feed' do
      allow(player).to receive(:profile).and_return(SAMPLE_DATA)
      expect(player.profile[:links][:twitter]).to eq('https://twitter.com/mikuloctopus')
    end
  end

end
