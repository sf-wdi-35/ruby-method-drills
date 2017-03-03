##############################
#### MANIPULATING HASHES ####
##############################

def character_count str 
  str = str.downcase
  letters = {}
  str.each_char do |char|
    if letters[char]
      letters[char] += 1
    else 
      letters[char] = 1
    end
  end
  letters
end

def word_count str
  words = {}
  str.split(" ").each do |word|
    word = word.gsub(/[^a-zA-Z]/, "").downcase
    if words.include?(word)
      words[word] += 1
    else
      words[word] = 1
    end
  end
  words
end

def most_frequent_word str
  word_count = word_count str
  ans = ['test',0]
  for word in word_count
    ans = word if word[1] > ans[1]
  end
  ans[0]
end

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
