class HelloWorld
  attr_accessor = :myName

  def initialize(myName)
    @myName = myName
  end

  def hello(yourName = "World")
    "Hello, #{yourName}. My name is #{@myName}!"
  end
end