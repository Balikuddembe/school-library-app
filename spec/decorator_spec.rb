require_relative '../decorator'

describe Decorator do
  let(:nameable) { double('Nameable', correct_name: 'balix') }
  subject { described_class.new(nameable) }

  describe '#correct_name' do
    it 'Should return the correct name of the nameable object' do
      expect(subject.correct_name).to eq('balix')
    end
  end
end
