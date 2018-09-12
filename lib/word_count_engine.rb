require 'pry'
# STEPS:
# remove non-word characters from document
# split the string
# find unique words, group them, and put them in an array

# count how many unique words are in the string and add number to array next to the word in string format

class WordCountEngine
  def self.word_counter(document)
    # binding.pry
    engine = []
    new_array = document.downcase.delete(?').gsub(/\W/, ' ').split
    new_array.group_by(&:itself)
  end
end
