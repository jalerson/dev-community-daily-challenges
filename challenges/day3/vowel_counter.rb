module Day3
  class VowelCounter
    attr_reader :input

    VOWELS_REGEX = /[aeiouAEIOU]/.freeze

    def initialize(input)
      @input = input
    end

    def call
      input.scan(VOWELS_REGEX).count
    end
  end
end
