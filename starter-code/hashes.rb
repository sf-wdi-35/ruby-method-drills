##############################
#### MANIPULATING HASHES ####
##############################
def character_count  str
  char_counts = {}
  str.each_char do |char|
    char = char.downcase
    if char_counts[char].nil?
      char_counts[char] = 1
    else
      char_counts[char] +=1
    end
  end
  char_counts
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
end
## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
