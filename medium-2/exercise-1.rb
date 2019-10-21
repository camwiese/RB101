# The Longest Sentence

# Write a program that reads the contents of a text file and prints the longest Sentence

# Input: File of text
# Output: Longest String


# Import a library to read the text file.
# Run through each line, stopping when we reach a break char (? . !)
# and then adding that line to a new array. 

# Once we've added all of the sentences to the array, we want to return 
# the length of the longest sentence and the sting (array[index] + array[index].legnth)

# Algorithm:
# Import the text
# Convert into words
# set a split_at number set to zero
# Loop each with index until split? (char method where char[-1] = ?,!,.)
# Once we break, add index  -> current index to a new array
# update the split_at index to current value
# sort the new array and return the length & value of the longest string.


file = File.open('gettysburg.txt')
text = file.read.gsub("\n", " ")

def split?(word)
  # returns true if the last character is a setnece ender
  last = word[-1]
  last == "." || last  == "?" || last == "!"
end

def parse_text(text) 
  split_at = 0
  sentences = []

  text.split.each_with_index do |word, index|
    if split?(word)
      sentences << text.split[split_at..index].join(" ")
      split_at = index+1
    end
  end

  sentences.sort_by!(&:length)
  longest = sentences[-1]
  longest
end

p parse_text(text)







