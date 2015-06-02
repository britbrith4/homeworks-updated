require 'active_record'
require 'pry'


ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:host => "localhost",
	:database => "kitchen_db"
)


class Fridge < ActiveRecord::Base
	has_many :foods
	has_many :drinks
	validates :location, :size, :brand, presence: true
		
end

class Food < ActiveRecord::Base	
	belongs_to :fridge
	validates :name, :size, presence: true

end



class Drink < ActiveRecord::Base
	belongs_to :fridge
	validates :name, :size, :alcoholic
	
end




class CreateKitchen < ActiveRecord::Migration
	def initialize

		create_table :fridges do |column|
			column.string :location
			column.string :brand
			column.string :size #feet
		end

		create_table :foods do |column|
			column.string :name
			column.string :weight 
			column.boolean :vegan
			column.string :time_stamp 
			column.string :fridge_id
		end

		create_table :drinks do |column|
			column.string :name
			column.integer :size
			column.boolean :alcohol 
			column.string :fridge_id
		end
end
end

def clean_up
	ActiveRecord::Base.connection.tables.each do |table|
		ActiveRecord::Base.connection.drop_table(table)
		end
end

while true
	#main menu
puts "Select fridge item"
puts "1. List all Fridges"
puts "2. Add a Fridge"
puts "3. Remove a Fridge"
puts "4. View all items in specific Fridge"
puts "5. Add food item to fridge"
puts "6. Eat a food item from fridge"
puts "7. View allitems in specific Fridge"
puts "8. Add a drink item to Fridge"
puts "9. Remove part of a drink from Fridge"
puts "10. Drink all of an item from a Fridge"
puts "11. Exit"

user_entry = gets.chomp.to_i

if user_entry == 1
		all_fridges = Fridge.all
		puts(all_fridges)

	elsif user_entry == 2

	elsif user_entry == 3

	elsif user_entry == 4

	elsif user_entry == 5

	elsif user_entry == 6

	elsif user_entry == 7

	elsif user_entry == 8

	elsif user_entry == 9

	elsif user_entry == 0
		puts("Goodbye!")
		break 
	else
		puts("incorrect enter different selection")
	end



end


