RSpec.describe Day2::StringDiamond do
  context 'odd number' do
    context '5 as input' do
      it 'returns a 5-size diamond' do
        subject = Day2::StringDiamond.new(5)

        expect(subject.call).to match_array(
          [
            [' ', ' ', '*', ' ', ' '],
            [' ', '*', '*', '*', ' '],
            ['*', '*', '*', '*', '*'],
            [' ', '*', '*', '*', ' '],
            [' ', ' ', '*', ' ', ' ']
          ]
        )
      end
    end

    context '3 as input' do
      it 'returns a 3-size diamond' do
        subject = Day2::StringDiamond.new(3)

        expect(subject.call).to match_array(
          [
            [' ', '*', ' '],
            ['*', '*', '*'],
            [' ', '*', ' ']
          ]
        )
      end
    end
  end

  context 'even number' do
    it 'returns nil' do
      subject = Day2::StringDiamond.new(4)

      expect(subject.call).to be_nil
    end
  end

  context 'negative number' do
    it 'returns nil' do
      subject = Day2::StringDiamond.new(-3)

      expect(subject.call).to be_nil
    end
  end
end
