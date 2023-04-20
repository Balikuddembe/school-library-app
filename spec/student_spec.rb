require_relative '../student'

describe Student do
  context 'Should create a new instance of Student class' do
    it 'The initialize method returns a Student object with the attributes provided' do
      age = 19
      name = 'Bob Lazar'
      parent_permission = false

      student = Student.new(age, name, parent_permission)
      expect(student.name).to eq name
      expect(student.age).to eq age
    end
  end

  context 'Should instance the method play_hocky from Student class' do
    it 'The play_hocky method returns "¯\(ツ)/¯"' do
      age = 19
      name = 'Bob Lazar'
      parent_permission = false

      student = Student.new(age, name, parent_permission)
      expect(student.play_hooky).to eq '¯\(ツ)/¯'
    end
  end
end