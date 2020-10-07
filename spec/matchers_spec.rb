# frozen_string_literal: true

describe 'matcher tests' do
  describe 'integer tests' do
    it '10 is greater than 5' do
      expect(10).to be > 5
    end

    it '5 is not greater than 7' do
      expect(5).not_to be > 7
    end
  end

  describe 'array tests' do
    it 'the array includes 1' do
      expect([1, 2, 3]).to include 1
    end

    it 'the array does not include 9' do
      expect([1, 2, 3]).not_to include 9
    end
  end

  describe 'string tests' do
    it 'string starts with Ruby' do
      expect('Ruby Mine').to start_with 'Ruby'
    end

    it 'string does not start with Mine' do
      expect('Ruby Mine').not_to start_with 'Mine'
    end
  end

  # See user_spec to see this in action
  describe 'magic matchers!' do
    it 'expects nil to be nil' do
      expect(nil).to be_nil
    end

    it 'expects true not to be nil' do
      expect(true).not_to be_nil
    end
  end
end
