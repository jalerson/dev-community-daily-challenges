module Day2
  class StringDiamond
    attr_reader :input

    def initialize(input)
      @input = input
    end

    def call
      return if input.nil? || input.negative? || input.even?

      triangle + [new_layer(input)] + triangle.reverse
    end

    private

    def triangle
      output = []
      stars = 1

      (1..(input / 2)).each do
        output << new_layer(stars)
        stars += 2
      end

      output
    end

    def new_layer(stars)
      raise ArgumentError, 'Number of stars cant be even' if stars.even?

      layer = []
      blank = (input - stars) / 2

      blank.times { layer << ' ' }
      stars.times { layer << '*' }
      blank.times { layer << ' ' }

      layer
    end
  end
end
