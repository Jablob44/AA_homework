def hipsterfy(word)
    vowels = "aeiou"
    i = word.length - 1
    while i >= 0
        if vowels.include?(word[i].to_s)
            word.slice!(i)
            break
        end
        i -= 1
    end
    word
end

def vowel_counts(str)
    vowels = "aeiou"
    vcount = Hash.new(0)
    str.downcase.each_char { |char| vcount[char] += 1 if vowels.include?(char) }
    vcount
end

def caesar_cipher(str, num)
    alph = "abcdefghijklmnopqrstuvwxyz"
    (0...str.length).each do |i|
        if alph.include?(str[i])
            index = (alph.index(str[i]) + num) % 26
            str[i] = alph[index]
        end
    end
    str
end