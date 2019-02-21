class Puppy

  attr_reader :breed
  attr_accessor :name, :age

  def initialize(args)
    @name = args[:name]
    @breed = args[:breed]
    @age = args[:months_old]
    @age ||= args[:age] #when args are different
  end
end
