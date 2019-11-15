active = ['1-low', '2-medium', '3-high']
ears = ['1-droop', '2-rose', '3-uppy']
coat = ['1-short', '2-medium', '3-long']

class Breed
    attr_accessor :activity_level, :ear_type, :coat_type 
    
    def initialize (activity_level, ear_type, coat_type)
        @activity_level = activity_level
        @coat_type = coat_type
        @ear_type = ear_type
    end
end

@bulldog = Breed.new(1,2,1)
clumber = Breed.new("low", "droop", "medium")
pekingese = Breed.new("low", "droop", "long")
whippet = Breed.new("medium", "rose", "short")
akita = Breed.new("medium", "uppy", "medium")
bernese = Breed.new("medium", "droop", "long")
dalmation = Breed.new("high", "droop", "short")
husky = Breed.new("high", "uppy", "medium")
aussie_shepherd = Breed.new("high", "droop", "long")

@arr = []

puts "Welcome to your Dream Dog selector"
puts "Please start by selecting a number for the activity level of your ultimate dog: "

active.each do |level|
    puts level
end

activity_selection = gets.chomp
#A method in here to convert user input to a number?
@arr.push (activity_selection)

puts "How to you envision your future pups ears? Select a number:"

ears.each do |ear|
    puts ear
end

ear_selection = gets.chomp
@arr.push (ear_selection)

puts "What type of coat do you wish your dog to have? Enter your selection with a number:"

coat.each do |coat|
    puts coat
end

coat_selection = gets.chomp
@arr.push (coat_selection)

puts "Your Dream dog has a #{activity_selection} activity level. On their head are beautiful #{ear_selection} ears. Their #{coat_selection} is shiny and soft." 

def breed_choice
    if @arr == @bulldog
        puts "bulldog"
        
    #compare arr with Breed instances to choose most 'matching' instance. 
    #How to iterate over each instance of Breed?
    #change inputs into numbers? for easier comparison?
    end
end
puts breed_choice
puts @arr

puts" We suggest that your Dream Dog is a #{breed_choice}..."
