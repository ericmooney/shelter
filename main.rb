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
    clients = Client.new(client_name)
        
  end
  print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
  response = gets.chomp.downcase

end

binding.pry
