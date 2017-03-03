##############################
#### MANIPULATING HASHES ####
##############################
def character_count(testing)
  test_count = {}
  testing.each_char do |thing|
    thing = thing.downcase
    if test_count[thing].nil?
      test_count[thing] = 1
    else
      test_count[thing] += 1
    end
  end
  test_count
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
