RSpec.describe Day2::StringDiamond do
  subject { Day2::StringDiamond.new }

  context 'odd number' do
    context '5 as input' do
      it 'returns a 5-size diamond' do
        expect(subject.call(5)).to match_array(
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
        expect(subject.call(3)).to match_array(
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
      expect(subject.call(4)).to be_nil
    end
  end

  context 'negative number' do
    it 'returns nil' do
      expect(subject.call(-3)).to be_nil
    end
  end
end
