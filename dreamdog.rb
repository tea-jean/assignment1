active = ['low', 'medium', 'high']
ears = ['droopy', 'rose', 'uppy']
coat = ['short', 'medium', 'long']

class Breed
    attr_accessor :activity_level, :ear_type, :coat_type 
    
    def initialize (activity_level, ear_type, coat_type)
        @activity_level = activity_level
        @coat_type = coat_type
        @ear_type = ear_type
    end
end

bulldog = Breed.new("low", "rose", "short")
clumber = Breed.new("low", "droop", "medium")
pedingese = Breed.new("low", "droop", "long")
whippet = Breed.new("medium", "rose", "short")
akita = Breed.new("medium", "uppy", "medium")
bernese = Breed.new("medium", "droop", "long")
dalmation = Breed.new("high", "droop", "short")
husky = Breed.new("high", "uppy", "medium")
aussie_shepherd = Breed.new("high", "drop", "long")

arr = [""]

puts "Welcome to your Dream Dog selector"
puts "Please start by telling me the activity level of your ultimate dog: "

active.each do |level|
    puts level
end

activity_selection = gets.chomp
arr.push (activity_selection)

puts "How to you envision your future pups ears?"

ears.each do |ear|
    puts ear
end

ear_selection = gets.chomp
arr.push (ear_selection)

puts "What type of coat do you wish your dog to have?"

coat.each do |coat|
    puts coat
end

coat_selection = gets.chomp + " coat"
arr.push (coat_selection)

puts "Your Dream dog has a #{activity_selection} activity level. She has beautiful #{ear_selection} ears. Her #{coat_selection} is shiny and soft." 

def breed_choice
    when
    @arr == Breed
    #compare arr with Breed instances to choose most 'matching' instance. 
    #How to iterate over each instance of Breed?
    end
end
puts breed_choice

puts" We suggest that your Dream Dog is a ..."
