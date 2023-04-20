module PersonModule
  # Create a person (teacher or student, not a plain Person).
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person = gets.chomp
    case person
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Write 1 or 2'
    end
    @option.show_options
  end

  # Create a student
  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent persmission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'
    @persons.push(Student.new(age, name, parent_permission))
    puts 'Person created successfuly'
  end

  # Create a teacher
  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(age, name, specialization))
    puts 'Person created successfully'
  end
end
