class MySuperClass
	def my_method
		"my method called on MySuperClass"
	end
end

class MyClass < MySuperClass; end

my_class = MyClass.new
puts my_class.my_method