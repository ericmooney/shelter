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
    puts "Which pet would you like?"
    pet_to_adopt = gets.chomp.capitalize
    shelter.pets.delete(pet_to_adopt)

    puts "What is your first name?"
    client_name = gets.chomp.capitalize
    client = Client.new(client_name)
    client.pets << pet_to_adopt
  elsif response == "g"
    puts "What is your first name?"
    client_name = gets.chomp.capitalize
    client = Client.new(client_name)

    puts "What pet would you like to give up?"
    pet_to_give = gets.chomp.capitalize
    client.pets.delete(pet_to_give)
    shelter.pets << pet_to_give

        
  end
  print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
  response = gets.chomp.downcase

end

binding.pry
