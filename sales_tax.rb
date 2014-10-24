$sales_tax = 0.10
$imported_tax = 0.05

class Item
	attr_accessor :quantity, :item_name, :price, :imported, :tax_exempt

	def initialize (quantity, item_name, price, imported, tax_exempt)
		@quantity = quantity
		@item_name = item_name
		@price = price
		@imported = imported
		@tax_exempt = tax_exempt
	end

end

def parseInput (input)
	splitted_input = input.split(" ")
	quantity = splitted_input[0]
	price = splitted_input[splitted_input.length - 1]
	imported = input.include?("imported") 

	index_array = []
	input.to_enum(:scan,/ /i).map do |m,|
    	index_array << $`.size
	end

	start_index = index_array[0] + 1
	end_index = index_array[index_array.length - 2] -1
	item_name = input[start_index, end_index]

	puts "#{quantity} and #{price} and #{imported} and #{item_name}"
end

puts "Please input your grocery list."
user_input = gets.chomp
parseInput(user_input)