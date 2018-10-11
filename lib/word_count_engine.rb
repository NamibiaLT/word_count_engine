require 'pry'
# STEPS:
# remove non-word characters from document
# split the string
# find unique words, group them, and put them in an array

# count how many unique words are in the string and add number to array next to the word in string format

class WordCountEngine
  def self.word_counter(document)
    new_array = document.downcase.delete(?').gsub(/\W/, ' ').split
    # new_array.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
    word_groups = new_array.group_by(&:itself)
    counts = word_groups.map { |word, group| [word, "#{group.length}"] }

    counts.sort! do |current_arr, next_arr|
      next_arr.count > current_arr.count
    end
    # puts counts
  end
end
