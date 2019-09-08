module Day2
  class StringDiamond
    def call(input)
      return if input.nil? || input.negative? || input.even?

      diamond = []
      stars = 1
      blank = (input - stars) / 2
      reverse = false

      input.times do
        diamond << new_layer(stars, blank)

        reverse = true if stars == input

        if reverse
          stars -= 2
          blank += 1
        else
          stars += 2
          blank -= 1
        end
      end

      diamond
    end

    private

    def new_layer(stars, blank)
      layer = []

      blank.times { layer << ' ' }
      stars.times { layer << '*' }
      blank.times { layer << ' ' }

      layer
    end
  end
end
