class Breed
    attr_accessor :activity_level, :ear_type, :coat_type 
    
    def initialize (activity_level, ear_type, coat_type)
        @activity_level = activity_level
        @coat_type = coat_type
        @ear_type = ear_type
    end
end

labrador = Breed.new("medium", "pendant", "short")

p labrador.activity_level

