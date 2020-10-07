# frozen_string_literal: true

require './lib/user'

describe User do
  it 'is born in leap year when born in 2000' do
    user = User.new('zach', '2000-09-21')
    expect(user.born_in_leap_year?).to eq true
  end

  it 'is at the voting age of 18 or greater when born in 2000' do
    user = User.new('zach', '2000-09-21')
    expect(user.can_vote?).to eq true
  end

  it 'cannot vote if born less than 18 years ago, ex. 2015' do
    user = User.new('zach', '2015-09-21')
    expect(user.can_vote?).not_to eq true
  end
end
