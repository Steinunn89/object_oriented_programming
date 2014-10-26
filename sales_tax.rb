$sales_tax_rate = 0.10
$imported_tax_rate = 0.05


class Item
	attr_accessor :quantity, :item_name, :price, :imported, :tax_exempt

	def initialize (quantity, item_name, price, imported, tax_exempt)
		@quantity = quantity
		@item_name = item_name
		@price = price
		@imported = imported
		@tax_exempt = tax_exempt
	end

	def sales_tax_calc

		original_item_cost = quantity * price
		sales_tax = 0

		if imported 
			sales_tax += original_item_cost * $imported_tax_rate
		end

		if !tax_exempt
			sales_tax += original_item_cost * $sales_tax_rate
		end

		return sales_tax

	end

	def cost
		return quantity * price + sales_tax_calc
	end


	def print_item_line
		puts "#{quantity} #{item_name} : #{cost}"
	end


end

def cart (item_array)

	total_sales_tax = 0
	grand_total = 0

	item_array.each do |item|

		#prints information for each item quantity, item name & price

		item.print_item_line

		#adds sales tax of each item to the total sales tax

		total_sales_tax += item.sales_tax_calc 

		#adds cost of each item to total cost

		grand_total += item.cost

	end

	puts "Total sales tax: #{total_sales_tax}"
	puts "Grand total: #{grand_total}"

end

def item_input

	item_array = []

	repeat = true

	while repeat do 

		puts "Please enter the quantity."
		quantity = gets.chomp.to_i
		puts "Please enter the item name."
		item_name = gets.chomp
		puts "Please enter the price."
		price = gets.chomp.to_i
		puts "Is this item taxable? (Y/N)"
		tax_exempt = (gets.chomp == "N")

	
		puts "Is this item imported? (Y/N)"
		imported = (gets.chomp == "Y")

		item = Item.new(quantity, item_name, price, imported, tax_exempt)

		item_array << item

		puts "Would you like to enter another item? (Y/N)"
		repeat = (gets.chomp == "Y")

	end

	cart (item_array)

end

item_input





# def parseInput (input)
# 	splitted_input = input.split(" ")
# 	quantity = splitted_input[0]
# 	price = splitted_input[splitted_input.length - 1]
# 	imported = input.include?("imported") 

# 	index_array = []

# 	#gives array of indices of spaces in string
# 	input.to_enum(:scan,/ /i).map do |m,|
#     	index_array << $`.size
# 	end

# 	start_index = index_array[0] + 1 
# 	end_index = index_array[index_array.length - 2] -1
	
# 	item_name = input[start_index, end_index]

# 	puts "Quantity = #{quantity}"
# 	puts "Price = #{price}"
# 	puts "Is it imported? #{imported}" 
# 	puts "Item name = #{item_name}"
# end

# puts "Please input your grocery list."
# user_input = gets.chomp
# parseInput(user_input)