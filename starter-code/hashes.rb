##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

def character_count (my_str)
  my_str = my_str.downcase
  str_to_array = my_str.split("")
  character_counter = Hash.new(0)

  str_to_array.each { |character| character_counter[character]+= 1}

  return character_counter

end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

def word_count (my_str)
  my_str = my_str.downcase
  str_to_array = my_str.split(" ")
  
  word_counter = Hash.new(0)

  str_to_array.each do |word| 
    word.gsub!(/[^a-z]/,"")
    word_counter[word]+= 1
  end

  return word_counter

end


## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
def most_frequent_word(my_str)
  my_str = my_str.downcase
  str_to_array = my_str.split(" ")
  
  word_counter = Hash.new(0)

  str_to_array.each do |word| 
    word.gsub!(/[^a-z]/,"")
    word_counter[word]+= 1
  end

  word_counter = word_counter.sort_by {|word, count| count}
  word_counter.reverse!
  return word_counter[0][0]

end
