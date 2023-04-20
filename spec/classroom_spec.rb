require_relative '../classroom'
require_relative '../student'
describe Classroom do
    context 'when testing the Classroom class' do
        label = 'Maths'
        student = Student.new(25,'Tom',parent_permission:true)
        classroom = Classroom.new(label)
        
     it 'check for the label' do
        expect(classroom.label).to eq label
        end
        
        it 'validate length of the array students' do
            classroom.add_student(student)
            expect(classroom.students.length).to eql 1
            end
    end
end
