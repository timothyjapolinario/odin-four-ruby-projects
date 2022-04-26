require 'pry-byebug'
def find_substrings(string_to_find, dictionary)
    dictionary.reduce(Hash.new(0)) do |result, word|
        if (word.include?(string_to_find))
            result[word] += 1
        end
        result
    end
end
words_to_find = ["logical", "logbook", "cat","dog","logistic","person", "logarithm","logistic","logbook"]
p find_substrings("log", words_to_find)


