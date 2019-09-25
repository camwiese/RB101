=begin

write a method that takes a positie integrer (or zero) and converts it to a string

Input: an integer
output: a string version of that integer

Process:
*Take the integer and break it up into pieces 1234
*Grab a hash value for the key of the value 1=>'1'...
return to an array ['1','2','3','4']
join the array '1234'
retrun the array

divide the number by 10, grab the result, conver it, add to array

I can take the integer and divmod it into an array. 

=end

LETTERS = {
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  0 => '0'
}

def integer_to_string(integer)
  array = []
  new_int = integer
  # Conver the Integer into an Array
  if new_int > 0
    while new_int > 0
      new_int, num = new_int.divmod(10)
      array.unshift(num)
    end
  else
    array = [0]
  end
  #Map the array value to the strings hash
  array.map do |num|
    LETTERS[num]
  end

  array.join()
end

p integer_to_string(4321) == '4321'
p integer_to_string(0)    == '0'
p integer_to_string(5000) == '5000'
