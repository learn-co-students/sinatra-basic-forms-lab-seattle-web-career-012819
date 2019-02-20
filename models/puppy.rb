class Puppy
  attr_accessor :name, :age, :breed

  def initialize(name:, breed:, months_old:)
    @name = name
    @breed = breed
    @age = months_old
  end
end
