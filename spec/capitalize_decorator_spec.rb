require_relative '../capitalizedecorator'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable', correct_name: 'jose') }
  subject { described_class.new(nameable) }

  describe 'Should test the Capitalize decorator' do
    it 'Should return the name with the first letter in uppercase' do
      expect(subject.correct_name).to eq('Jose')
    end
  end
end
