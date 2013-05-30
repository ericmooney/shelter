require "pry"

require_relative "shelter"

shelter = Shelter.new

print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
response = gets.chomp.downcase

while response != "q"
  if response == "l"

    puts shelter.pets.each
    
  end
  print "Do you want to (l)ist available pets, (a)dopt a pet, (g)ive up a pet, or (q)uit?"
  response = gets.chomp.downcase

end

binding.pry
