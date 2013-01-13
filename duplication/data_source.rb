class DataSource
	def get_steak_info(restaurant_id); end
	def get_steak_price(restaurant_id); end
	def get_ribs_info(restaurant_id); end
	def get_ribs_price(restaurant_id); end
	def get_pasta_info(restaurant_id); end
	def get_pasta_price(restaurant_id); end
	#...
end

data_source = DataSource.new
data_source.get_steak_info 1 # => Garlic steak
data_source.get_steak_price 1 # => 30.00

data_source.get_ribs_info 1 # => BBQ ribs
data_source.get_ribs_price 1 # => 25.00

data_source.get_pasta_info 1 # => Mac 'n Cheese
data_source.get_pasta_price 1 # => 10.00