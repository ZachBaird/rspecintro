# frozen_string_literal: true

require 'date'

# A user object
class User
  attr_reader :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def born_in_leap_year?
    parsed_date = Date.parse(@birthday).year

    (parsed_date % 400).zero? ||
      parsed_date % 100 != 0 &&
        (parsed_date % 4).zero?
  end

  def can_vote?
    Date.today + (365 * -18) > Date.parse(@birthday)
  end
end
