require_relative '../teacher.rb'

describe Teacher do
    context 'When testing the teacher class' do
        name = 'balix'
        age = '25'
        specialization = 'Maths'
        teacher = Teacher.new(age,name,specialization)

        it 'validate the age of teacher' do
            expect(teacher.age).to eq age
        end
        it 'validate the name of teacher' do
            expect(teacher.name).to eq name
        end
    end

    context 'for the can_use_services? methode' do
        it 'can_use_services? method' do
            teacher = Teacher.new(25,"paul","sst")
            expect(teacher.can_use_services?).to eql true
        end
    end
end