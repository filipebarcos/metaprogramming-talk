class Restaurant

	def initialize(restaurant_id, data_source)
		@id = restaurant_id
		@ds = data_source
	end

	def steak
		info = @ds.get_steak_info(@id)
		price = @ds.get_steak_price(@id)
		result = "Steak: #{info} ($#{price})"
		return "* #{result}" if price > 25
		result
	end

	def ribs
		info = @ds.get_ribs_info(@id)
		price = @ds.get_ribs_price(@id)
		result = "Ribs: #{info} ($#{price})"
		return "* #{result}" if price > 25
		result
	end

	def pasta
		info = @ds.get_pasta_info(@id)
		price = @ds.get_pasta_price(@id)
		result = "Pasta: #{info} ($#{price})"
		return "* #{result}" if price > 25
		result
	end

	# ...
end