# frozen_string_literal: true

require './lib/user'

describe User do
  subject { User.new('zach', "#{year}-09-21") }

  context 'when born in 2000' do
    let(:year) { 2000 }

    it { should be_born_in_leap_year }
    it { should be_born_in_leap_year }
    it { should be_can_vote }
  end

  context 'when born in 2004' do
    let(:year) { 2004 }

    it { should be_born_in_leap_year }
  end

  context 'when born in 1900' do
    let(:year) { 1900 }

    it { should_not be_born_in_leap_year }
  end

  context 'when not born in 2000' do
    let(:year) { 2010 }

    it { should_not be_born_in_leap_year }
    it { should_not be_can_vote }
  end
end
