class Restaurant

	def initialize(restaurant_id, data_source)
		@id = restaurant_id
		@ds = data_source
		#Restaurant.define_dish(@ds.methods.grep(/^get_(.*)_info$/))
	end

	def self.define_dish(*names)
		names.each do |name|
			define_method(name) do
				info = @ds.send "get_#{name}_info", @id
				price = @ds.send "get_#{name}_price", @id
				result = "#{name.to_s.capitalize}: #{info} ($#{price})"
				return "* #{result}" if price > 25
				result
			end
		end
	end

	define_dish :pasta, :ribs, :steak
end