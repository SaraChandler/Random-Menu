#Array list
adjectives = []
styles = []
foods = []


puts
puts "Welcome to the Random Menu Generator"
puts
puts "How many food items do you want to create? Please enter a number."
puts
#rescue for number?
food_number = gets.chomp.to_i 

#Redundant loops checking if the number of adjectives, cooking styles,
#and foods match the number of menu items requested. 
until adjectives.length == food_number do
	puts
	puts
	puts "Please give me a list of your one word food adjectives equal to the number of"
	puts "menu items you want to create separated by a space:"
	puts
	user_adjectives = gets.chomp.to_s
	adjectives = user_adjectives.split(/ /)

	  if adjectives.length != food_number 

	  	  adjectives.clear

	    else
	  	  puts
	  	  puts "Thank you!"
	  end
	
end


until styles.length == food_number do
	puts
	puts
	puts "Please give me a list of one word cooking styles equal to the"
	puts "number of menu items separated by a space:"
	user_styles = gets.chomp
	styles = user_styles.split(/ /)

	   if styles.length != food_number

	  	   styles.clear

	     else
	  	   puts
	  	   puts "Thank you!"
	  end
end 

until foods.length == food_number do
	puts
	puts
	puts "Please give me a list of one word foods equal to the number"
	puts "of menu items separated by a space:"
	user_foods = gets.chomp
	foods = user_foods.split(/ /)

	  if foods.length != food_number

	  	   foods.clear

	     else

	  	   puts
	  	   puts "Thank you!"
	  end
end

puts
puts
puts "Here is your menu:"
puts
#Creates menu by grabbing a random element from each array as an object, 
#deleting it from the array, and adding it to instance variable menu_item.
i = 0
food_number.times do 
	i = i +1 

	menu_item = adjectives.delete(adjectives.sample) + " " + styles.delete(styles.sample) + " " + foods.delete(foods.sample)

	puts "#{i}" + "." + " " + "#{menu_item}"

end
puts







