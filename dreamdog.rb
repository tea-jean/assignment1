active = ['low', 'medium', 'high']
ears = ['drop', 'rose', 'uppy']
coat = ['short', 'med', 'long']

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

p labrador.activity_level

