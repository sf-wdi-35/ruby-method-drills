##############################
#### MANIPULATING HASHES ####
##############################
def character_count str

  char_count = {}

  str.each_char do |char|
    char = char.downcase
    char_count[char].nil? ? char_count[char] = 1 : char_count[char] = char_count[char] + 1
  end

  char_count
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
