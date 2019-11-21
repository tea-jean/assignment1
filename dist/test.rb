# breed_choice method?
# semi_match method?
require "colorize" 
require_relative "methods"

def test_breed_choice
    test_var = Breed.new("Bulldog", "low", "rose", "short")
    expected_result = true
    actual_result = test_var.breed_matches("low", "rose", "short")
    if expected_result == actual_result
        puts "PASS".colorize(:green)
    else
        puts "FAIL".colorize(:red)
    end
end

# def breed_choice (activity, ear, coat, breeds)
#     breeds.each do |breed|
#         is_match = breed.breed_matches(activity, ear, coat)
#         if is_match 
#             return breed.name  
#         end
#     end
#     nil
# end

test_breed_choice
