require_relative 'file_2'

include Tools

class Main
  attr_accessor :name, :age,:grade

  def initialize(name,age,grade)
    @name = name
    @age = age
    @grade = grade
  end

  def info
    puts "My name is #{@name}. I am #{@age}. My grade is #{@grade}"
    Tools.sayBye(@name)
    Tools.sayHello(@name)
  end
end

lisan = Main.new("Lisan Hosssain", 18 , 5.00 )
lisan.info