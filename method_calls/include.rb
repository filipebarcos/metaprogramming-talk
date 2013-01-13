module MyModule
	def my_method
		"my_method called on MyModule"
	end
end

class MyClass
	include MyModule

	def my_method
		"my method called on MyClass"
	end
end



my_class = MyClass.new
puts my_class.my_method