require 'assist'

describe Assist::Player do

  it 'must have the base url set to the Dribble API endpoint' do
    expect(Assist::Player::BASE_URL).to eq('https://api.dribbble.com/v1/users/')
  end

end
