# frozen_string_literal: true

# Contains several arithmetic methods
class Calculator
  def add(num1, num2, additional_num = 0)
    num1 + num2 + additional_num
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def multiply(num1, num2)
    num1 * num2
  end

  def divide(num1, num2)
    num1 / num2
  end
end
