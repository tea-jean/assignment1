require_relative "methods"

require "artii"
require "colorize"
require "tty-prompt"
require_relative "methods"

prompt = TTY::Prompt.new
a = Artii::Base.new

active = ['low', 'medium', 'high']
ears = ['droop', 'rose', 'uppy']
coat = ['short', 'medium', 'long']

bulldog = Breed.new("Bulldog", "low", "rose", "short")
clumber = Breed.new("Clumber Spaniel","low", "droop", "medium")
pekingese = Breed.new("Pekingese", "low", "droop", "long")
whippet = Breed.new("Whippet", "medium", "rose", "short")
akita = Breed.new("Akita", "medium", "uppy", "medium")
bernese = Breed.new("Bernese Mountain Dog", "medium", "droop", "long")
dalmation = Breed.new("Dalmation", "high", "droop", "short")
husky = Breed.new("Siberian Husky", "high", "uppy", "medium")
aussie_shepherd = Breed.new("Australian Shepherd", "high", "droop", "long")

breeds = [bulldog, clumber, pekingese, whippet, akita, bernese, dalmation, husky, aussie_shepherd]

puts a.asciify("Dream Dog").colorize(:blue)

puts "Hi #{} Welcome to your Dream Dog selector"

while true
puts "Would you like some help to find your future bestie? (Y/N)"
response = gets.upcase.chomp  

if response == "Y"
    puts "Fantastic! Let's get started..."
    break 
elsif response == "N"
    puts "That's a shame, best of luck." 
    exit 
else
    puts "Please enter a valid Y/N response:"
end
end 

activity_selection = prompt.select("Please start by selecting the activity level of your ultimate dog: ", active)

ear_selection = prompt.select("How to you envision your future pups ears?", ears)

coat_selection = prompt.select("What type of coat do you wish your dog to have?", coat)

puts "Your Dream Dog will have a #{activity_selection} activity level. On their head are beautiful #{ear_selection} ears. Their #{coat_selection} coat is shiny and soft." 

dream_dog = breed_choice(activity_selection, ear_selection, coat_selection, breeds)
suggestions = semi_match(activity_selection, coat_selection, breeds)

def outcome_file(dream_dog)
    begin
        File.write("your-dream-dog.txt".dream_dog)
    rescue StandardError => exception
        puts "Sorry, we are unable to save your Dream Dog file: #{exception}"
    end
end

if dream_dog == nil
    puts "Your selections are so unique that we cannot find an exact breed match for you. But we suggest that you might be interested in researching a " + suggestions.join(", ") + " ?"
else
    puts " We suggest that your Dream Dog is a #{dream_dog}..."
end

