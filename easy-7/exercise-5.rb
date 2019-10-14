ALPHA = ('A'..'Z').to_a + ('a'..'z').to_a

def staggered_case(string)
  output = string.chars.map.with_index do |char, index|
            if index.odd? && ALPHA.include?(char)
              char.downcase
            elsif index.even? && ALPHA.include?(char)
              char.upcase
            else
              char
            end
          end
  output.join

end


p staggered_case('I Love Launch School!')
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'