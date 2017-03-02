##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
def character_count(arg)
  counts = Hash.new 0
  letters = arg.downcase.chars
  letters.each {|c| counts[c] += 1}
  counts
end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts
def word_count(arg)
  counts = Hash.new 0
  words = arg.gsub(/[^a-zA-Z ]/, '').downcase.split(" ")
  words.each {|c| counts[c] += 1}
  counts
end


## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
def most_frequent_word(params)
  list = word_count(params).to_a
  list.sort{|a,b| a[1] <=> b[1]}.last[0]
end
