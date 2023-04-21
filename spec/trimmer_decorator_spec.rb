require_relative '../trimmerdecorator'

describe TrimmerDecorator do
  let(:nameable) { double('Nameable', correct_name: '012345678911111') }
  subject { described_class.new(nameable) }

  describe 'Should test if the trimmer decorator is working' do
    it 'Should return the first 10 characters of the correct name' do
      expect(subject.correct_name).to eq('0123456789')
    end
  end
end