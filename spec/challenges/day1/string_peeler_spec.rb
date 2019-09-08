RSpec.describe Day1::StringPeeler do
  subject { Day1::StringPeeler.new }

  context 'valid inputs' do
    context 'input: bab' do
      it 'returns a' do
        expect(subject.call('bab')).to eq('a')
      end
    end

    context 'input: baaaaaaaaab' do
      it 'returns aaaaaaaaa' do
        expect(subject.call('baaaaaaaaab')).to eq('aaaaaaaaa')
      end
    end

    context 'input: test' do
      it 'returns aaaaaaaaa' do
        expect(subject.call('baaaaaaaaab')).to eq('aaaaaaaaa')
      end
    end
  end

  context 'invalid inputs' do
    context 'empty string' do
      it 'returns nil' do
        expect(subject.call('')).to be_nil
      end
    end

    context 'only 1 character' do
      it 'returns nil' do
        expect(subject.call('a')).to be_nil
      end
    end

    context 'only 2 characters' do
      it 'returns nil' do
        expect(subject.call('aa')).to be_nil
      end
    end

    context 'nil input' do
      it 'returns nil' do
        expect(subject.call(nil)).to be_nil
      end
    end
  end
end
