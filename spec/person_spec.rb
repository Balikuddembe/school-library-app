require_relative '../person'

describe Person do
  context 'Should create a new instance of Person class' do
    it 'The initialize method returns a Person object with the attributes provided' do
      age = 25
      name = 'James Row'
      person = Person.new(age, name)

      expect(person.age).to eq age
      expect(person.name).to eq name
    end
  end

  context 'Should return true if the Person object is over 18 years and should return true if given permission' do
    it 'The initialize method returns a Person object with the attributes provided' do
      age = 25
      name = 'James Row'
      person = Person.new(age, name)

      expect(person.of_age?).to eq true
      expect(person.can_use_services?).to eq true
    end
  end
end