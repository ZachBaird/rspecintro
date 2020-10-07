# frozen_string_literal: true

require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than 2 numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the result of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(7, 5)).to eql(2)
    end
  end

  describe '#multiply' do
    it 'returns the product of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(5, 5)).to eql(25)
    end
  end

  describe '#divide' do
    it 'returns the quotient of 2 numbers' do
      calculator = Calculator.new
      expect(calculator.divide(32, 4)).to eql(8)
    end
  end
end
