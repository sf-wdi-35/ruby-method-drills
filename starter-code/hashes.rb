##############################
#### MANIPULATING HASHES ####
##############################
def character_count str
  char = {}
  str.downcase.each do |letter|
    if char[letter].nil?
      char[letter] = 1
    else 
      char[letter] =+ 1
    end
  end
  char
end
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

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
