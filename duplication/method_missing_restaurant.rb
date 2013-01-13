class Restaurant
	def initialize(restaurant_id, data_source)
		@id = restaurant_id
		@ds = data_source
	end

	def method_missing(name, *args)
		super if !@ds.respond_to?("get_#{name}_info")
		info = @ds.send("get_#{name}_info", args[0])
		price = @ds.send("get_#{name}_price", args[0])
		result = "#{name.to_s.capitalize}: #{info} ($#{price})"
		return "* #{result}" if price >= 25
		result
	end

end