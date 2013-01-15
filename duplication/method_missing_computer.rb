class Computer
	def initialize(computer_id, data_source)
		@id = computer_id
		@ds = data_source
	end

	def method_missing(name, *args)
		super if !@ds.respond_to?("get_#{name}_info")
		info = @ds.send("get_#{name}_info", @id)
		price = @ds.send("get_#{name}_price", @id)
		result = "#{name.to_s.capitalize}: #{info} ($#{price})"
		return "* #{result}" if price >= 100
		result
	end
end



require './data_source_computer'
computer = Computer.new(1, DataSourceComputer.new)
p computer.mouse
p computer.display