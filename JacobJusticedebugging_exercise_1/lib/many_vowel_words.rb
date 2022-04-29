# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence string as an arg. 
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ") #noticed when looping through that this makes words all characters (changed "" to " ")
    #debugger
    new_words = words.select do |word|
        num_vowels = num_vowels(word)
        num_vowels >= 2
    end

    new_words.join(" ")
end

def num_vowels(word)
    #debugger
    count = 0
    word.each_char do |char|
        count += 1 if "aeiou".include?(char) # first error (had include plural)
    end
    count
end

p many_vowel_words("This is a sentence with many vowels")