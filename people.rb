class Person

  def initialize(name)
  @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end
#Student class doesn't have a teach method


end

class Teacher < Person

  def teach
    puts "Everything in Ruby is on OBJECT!"
  end

end

frank = Student.new("frank")
frank.greeting

john = Teacher.new("John")
john.greeting

john.teach
frank.learn
