# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Dish.delete_all

def selectKItems(array, select)
	n = array.length
	result = []
	if select > n then
	  return NIL
	end
	
	(0..select-1).each do |i|
	  result.push(array[i])
	end
	
	(select..n-1).each do |i|
	  j = Random.rand(0..i)
	  if j < select then
	    result[j] = array[i]
	  end
	end
	return result
end

def selectKItemsToString(array, select)
  result = selectKItems(array, select)
  strResult = ""
	(0..select-1).each do |i|
	  if i == 0 then
	    strResult += result[i]
	  else
	    strResult += "," + result[i]
	  end
	end
	return strResult
end

dishes = []
(1..20).each do |name|
	cuisine = [ "Asia" , "Europe", "American", "Vietnamese", "Japanese"]	
	section = ["Breakfast", "Lunch", "Dinner", "Drinks"]
	
	dishProperties = {
		"name" => Faker::Food.dish,
		"description" => Faker::Lorem.paragraph(1, false, 2),
		"img" => "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-Ztll2UDymyR2RjlWE4EspbtiqDLt97_Xh4N7iT60DUQOJ6-R",
		"price" => Faker::Number.decimal(2, 2),
		"cuisine" => selectKItemsToString(cuisine, 2),
		"section" => selectKItemsToString(section, 3)
	}
	dishes.push(dishProperties)	
end
dish = Dish.create(dishes )