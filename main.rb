require "pry"

require_relative "shelter"
require_relative "client"

shelter = Shelter.new

print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
response = gets.chomp.downcase

while response != "q"
  if response == "l"

    shelter.pets.each do |pet|
      puts pet
    end
  elsif response == "a"
    puts "What is your first name?"
    client_name = gets.chomp.capitalize
    client = Client.new(client_name)

    puts "Which pet would you like?"
    pet_to_adopt = gets.chomp.capitalize
    if shelter.pets.include?(pet_to_adopt)
      shelter.pets.delete(pet_to_adopt)
      client.pets << pet_to_adopt
    else
      puts "That pet is not in the shelter"
    end

  elsif response == "g"
    puts "What is your first name?"
    client_name = gets.chomp.capitalize
    client = Client.new(client_name)

    puts "What pet would you like to give up?"
    pet_to_give = gets.chomp.capitalize
    client.pets.delete(pet_to_give)
    shelter.pets << pet_to_give
  else
    puts "You need to pick a correct response."
        
  end
  print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
  response = gets.chomp.downcase

end

binding.pry
