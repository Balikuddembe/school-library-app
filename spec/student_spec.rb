require_relative '../student'

describe Student do
  context '' do
    it '' do
      age = 19
      name = 'Bob Lazar'
      parent_permission = false

      student = Student.new(age, name, parent_permission)
      expect(student.name).to eq name
      expect(student.age).to eq age
    end
  end

  context '' do
    it '' do
      age = 19
      name = 'Bob Lazar'
      parent_permission = false

      student = Student.new(age, name, parent_permission)
      expect(student.name).to eq name
      expect(student.age).to eq age
    end
  end
end