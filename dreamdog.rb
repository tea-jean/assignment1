# require_relative "terminal-app/methods"

require "artii"
require "colorize"
require "tty-prompt"
require_relative "methods"

prompt = TTY::Prompt.new
a = Artii::Base.new

active = ['low', 'medium', 'high']
ears = ['droop', 'rose', 'uppy']
coat = ['short', 'medium', 'long']

class Breed
    attr_accessor :name, :activity_level, :ear_type, :coat_type 
    def initialize (name, activity_level, ear_type, coat_type)
        @name = name
        @activity_level = activity_level
        @coat_type = coat_type
        @ear_type = ear_type
    end

    def breed_matches (activity_level, ear_type, coat_type)
        activity_level == @activity_level && ear_type == @ear_type && coat_type == @coat_type 
    end

    def breed_suggest (activity_level, coat_type)
        activity_level == @activity_level && coat_type == @coat_type 
    end
end

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

puts "Welcome to your Dream Dog selector"

while true
puts "Would you like some help to find your future bestie? (Y/N)"
response = gets.upcase.chomp
 
# puts "Would you like some help to find your future bestie? (Y/N)"
# response = gets.chomp.upcase   

if response == "Y"
    puts "Fantastic! Let's get started..."
    break 
elsif response == "N"
    puts "That's a shame, best of luck." 
    exit 
else
    puts "Please enter a valid Y/N response:"
    # then loop back to puts "would you like some help..." use a method? 
end
end 

activity_selection = prompt.select("Please start by selecting the activity level of your ultimate dog: ", active)

ear_selection = prompt.select("How to you envision your future pups ears?", ears)

coat_selection = prompt.select("What type of coat do you wish your dog to have?", coat)

puts "Your Dream Dog will have a #{activity_selection} activity level. On their head are beautiful #{ear_selection} ears. Their #{coat_selection} coat is shiny and soft." 

def breed_choice (activity, ear, coat, breeds)
    breeds.each do |breed|
        is_match = breed.breed_matches(activity, ear, coat)
        if is_match 
            return breed.name  
        end
    end
    nil
end

dream_dog = breed_choice(activity_selection, ear_selection, coat_selection, breeds)

def semi_match(activity, coat, breeds)
    suggestions = []
    breeds.each do |breed|
        is_match = breed.breed_suggest(activity, coat)
        if is_match 
            suggestions << breed.name  
        end
    end
    suggestions 
end

suggestions = semi_match(activity_selection, coat_selection, breeds)

if dream_dog == nil
    puts "Your selections are so unique that we cannot find an exact breed match for you. But we suggest that you might be interested in researching a " + suggestions.join(", ") + " ?"
else
    puts " We suggest that your Dream Dog is a #{dream_dog}..."
end

# error handling
# user input policing