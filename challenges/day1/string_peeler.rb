# From: https://dev.to/thepracticaldev/daily-challenge-1-string-peeler-4nep
# Your goal is to create a function that removes the first and last letters of a string.
# Strings with two characters or less are considered invalid. You can choose to have your function
# return null or simply ignore.

module Day1
  class StringPeeler
    MIN_SIZE = 2

    def call(input)
      return if input.nil? || input.length <= MIN_SIZE

      input[1..-2]
    end
  end
end
