RSpec.describe Day3::VowelCounter do
  context "input is 'potato'" do
    it 'returns 3' do
      subject = Day3::VowelCounter.new('potato')

      expect(subject.call).to eq(3)
    end
  end

  context "input is 'Roads? Where we're going, we don't need roads.'" do
    it 'returns 14' do
      subject = Day3::VowelCounter.new("Roads? Where we're going, we don't need roads.")

      expect(subject.call).to eq(14)
    end
  end

  context "input is 'RAY, WHEN SOMEONE ASKS YOU IF YOU ARE A GOD, YOU SAY YES!'" do
    it 'returns 20' do
      subject = Day3::VowelCounter.new('RAY, WHEN SOMEONE ASKS YOU IF YOU ARE A GOD, YOU SAY YES!')

      expect(subject.call).to eq(20)
    end
  end

  context "input is '1 s0lemnly swe4r th4t 1 4m up t0 n0 g00d.'" do
    it 'returns 3' do
      subject = Day3::VowelCounter.new('1 s0lemnly swe4r th4t 1 4m up t0 n0 g00d.')

      expect(subject.call).to eq(3)
    end
  end

  context 'input is blank' do
    it 'returns 0' do
      subject = Day3::VowelCounter.new('')

      expect(subject.call).to eq(0)
    end
  end
end
