require './decorator'
require './capitalizedecorator'
require './trimmerdecorator'
class Person < Nameable
  # creates a getter method for @id
  attr_reader :id, :rentals
  # creates getter and setter methods for @name and @age
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def to_hash
    {
      id: @id,
      name: @name,
      age: @age,
      parent_permission: @parent_permission,
      rentals: @rentals.map(&:to_hash),
      json_class: self.class.name
    }
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  def correct_name
    @name
  end

  def add_rentals(person)
    @rentals.push(person)
  end
end
