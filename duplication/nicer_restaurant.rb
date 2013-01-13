class Restaurant

	def initialize(restaurant_id, data_source)
		@id = restaurant_id
		@ds = data_source
	end

	def steak
		dish :steak
	end

	def ribs
		dish :ribs
	end

	def pasta
		dish :pasta
	end

	# ...

	def dish(name)
		info = @ds.send "get_#{name}_info", @id
		price = @ds.send "get_#{name}_price", @id
		result = "#{name.to_s.capitalize}: #{info} ($#{price})"
		return "* #{result}" if price > 25
		result
	end
end