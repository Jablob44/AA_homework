# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args. 
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0 # noticed the nil, it should be 0 (later when you try operating on it you get an error)
    string.downcase.each_char do |c| # needs to be all lowercase
        count += 1 if c == char # missing an =
    end
    count
end
p letter_count("mississippi", "i")