require_relative '../nameable'

describe Nameable do
  it 'Should throw a NotImplementedError' do
    name = Nameable.new
    expect { name.correct_name('jose') }.to raise_error(NotImplementedError)
  end
end
