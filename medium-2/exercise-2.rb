# Collection of spelling blocks
# each block can only be used onces

# write a method that returns true if the word passed in can be spelled with the blocks

# define the blocks
# set the text to a variable
# loop through the characters of the argument
# if the character matches a block (downcase), remove the block from the options pool
# if there is no match, return false
# otherwise keep looping and return true. 


# block = [["B","O"],["X","K"],["D","Q"],["C","P"],["N","A"],["G","T"],["R","E"],["F","S"],["J","W"],["H","U"],["V","I"],["L","Y"],["Z","M"]]

# text = "BATCH"

# text.chars.each do |char|
#   char = char.downcase
#   # Loop through each character
#   # Now I check to see if that character exists in a block. 
#   block_check = block.each do |letters|
#                   if letters.include?(char.upcase)
#                     block.delete([letters[0],letters[1]])
#                     found = true
#                     break found
#                   else
#                     found = false
#                   end
#                   found
#                 end
#   puts "letters not found" if block_check == true
# end

# p block

# Struggled. HEr's the LS solution

# BLOCKS = [["B","O"],["X","K"],["D","Q"],["C","P"],["N","A"],["G","T"],["R","E"],["F","S"],["J","W"],["H","U"],["V","I"],["L","Y"],["Z","M"]].freeze
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze


def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? {|block| up_string.count(block) >= 2}
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true