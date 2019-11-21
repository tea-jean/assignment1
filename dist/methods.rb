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

def breed_choice (activity, ear, coat, breeds)
    breeds.each do |breed|
        is_match = breed.breed_matches(activity, ear, coat)
        if is_match 
            return breed.name  
        end
    end
    nil
end

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