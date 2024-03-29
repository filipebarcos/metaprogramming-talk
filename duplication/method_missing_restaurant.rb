class Restaurant
	def initialize(restaurant_id, data_source)
		@id = restaurant_id
		@ds = data_source
	end

	def method_missing(name, *args)
		super if !@ds.respond_to?("get_#{name}_info")
		info = @ds.send("get_#{name}_info", @id)
		price = @ds.send("get_#{name}_price", @id)
		result = "#{name.to_s.capitalize}: #{info} ($#{price})"
		return "* #{result}" if price >= 25
		result
	end

end


require './data_source'

restaurant = Restaurant.new(1, DataSource.new)

p restaurant.steak