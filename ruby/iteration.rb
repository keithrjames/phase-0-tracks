fruits=["apple","banana","water melon"]

puts "the orgin array:"
p fruits

fruits.each do |fruit|
  puts fruit + " pie"
end


puts "after .each method: "
p fruits

#.map! method

fruits=["apple","banana","water melon"]

puts "the orgin array:"
p fruits

fruits.map! do |fruit|
  fruit + " pie"
end


puts "after .map! method: "
p fruits



#hash with .each method
child_age={ "Tim" => "4", "Bill"=> "3", "Rosa"=>"5"
  }


puts "the orgin hash:"
p child_age

child_age.each do |name, age|
  puts "Hi, #{name}, your age is #{age}"
end


puts "after .each method: "
p child_age

#release 2 :
#1. delete_if
fruits=["apple","banana","water melon"]

fruits.delete_if {|fruit| fruit=="apple"}

p fruits


child_age={ "Tim" => "4", "Bill"=> "3", "Rosa"=>"5"
  }

  child_age.delete_if{|name, age| name != "Tim"}

  p child_age


#2. keep_if

fruits=["apple","banana","water melon"]

fruits.keep_if {|fruit| fruit!="apple"}
p fruits



child_age={ "Tim" => "4", "Bill"=> "3", "Rosa"=>"5"
  }

 child_age.keep_if{|name, age| age.to_i >4}

 p child_age


#3. select

fruits_select=["apple","banana","water melon"]
fruits_select.select! {|fruit| fruit == "banana"}
p fruits

child_age={ "Tim" => "4", "Bill"=> "3", "Rosa"=>"5"
  }

child_age.select!{|name,age| name=="Rosa"}
p child_age



#4. drop_while

fruits=["apple","banana","water melon"]
new_fruits= fruits.drop_while{|fruit| fruit !="banana"}
p new_fruits