active = ['low', 'medium', 'high']
ears = ['droop', 'rose', 'uppy']
coat = ['short', 'medium', 'long']

class Breed
    attr_accessor :activity_level, :ear_type, :coat_type 
    
    def initialize (activity_level, ear_type, coat_type)
        @activity_level = activity_level
        @coat_type = coat_type
        @ear_type = ear_type
    end

    def breed_matches (activity_level, ear_type, coat_type)
        activity_level == @activity_level && ear_type == @ear_type && coat_type == @coat_type 
    end

end

bulldog = Breed.new("low", "rose", "short")
clumber = Breed.new("low", "droop", "medium")
pekingese = Breed.new("low", "droop", "long")
whippet = Breed.new("medium", "rose", "short")
akita = Breed.new("medium", "uppy", "medium")
bernese = Breed.new("medium", "droop", "long")
dalmation = Breed.new("high", "droop", "short")
husky = Breed.new("high", "uppy", "medium")
aussie_shepherd = Breed.new("high", "droop", "long")

breeds = [bulldog, clumber, pekingese, whippet, akita, bernese, dalmation, husky, aussie_shepherd]

puts "Welcome to your Dream Dog selector"
puts "Please start by selecting the activity level of your ultimate dog: "

active.each do |level|
    puts level
end

activity_selection = gets.chomp


puts "How to you envision your future pups ears?"

ears.each do |ear|
    puts ear
end

ear_selection = gets.chomp

puts "What type of coat do you wish your dog to have?"

coat.each do |coat|
    puts coat
end

coat_selection = gets.chomp

puts "Your Dream dog has a #{activity_selection} activity level. On their head are beautiful #{ear_selection} ears. Their #{coat_selection} is shiny and soft." 

def breed_choice (activity, ear, coat, breeds)
    breeds.each do |breed|
        is_match = breed.breed_matches(activity, ear, coat)
        if is_match 
            return breed 
        end
   

        
    #compare arr with Breed instances to choose most 'matching' instance. 
    #How to iterate over each instance of Breed?
    #change inputs into numbers? for easier comparison?
    end
    nil
end

dream_dog = breed_choice(activity_selection, ear_selection, coat_selection, breeds)

puts "We suggest that your Dream Dog is a #{dream_dog}..."
