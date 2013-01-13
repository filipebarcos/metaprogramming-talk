it "should replace from a element to another" do
	array = [:ruby, :java, :javascript]
	expected_array = [:ruby, :csharp, :javascript]
	array.replace(:java, :csharp).should == expected_array
end




class Array
	def replace(from, to)
		each_with_index do { |elem, i| self[i] = to if elem == from }
	end
end



Array.instance_methods.grep /ˆre/ # => [:replace, :reject, :reject!, ...]