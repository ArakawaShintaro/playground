module PrependModule
  def hello
    puts "hello from PrependModule"
  end
end

class PrependedClass
  prepend PrependModule

  def hello
    puts "hello from class"
  end
end

obj = PrependedClass.new
obj.hello

module IncludeModule
  def hello
    puts "hello from IncludeModule"
  end
end

class IncludedClass
  include IncludeModule

  def hello
    puts "hello from class"
  end
end

obj = IncludedClass.new
obj.hello
