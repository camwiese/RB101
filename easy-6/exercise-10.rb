def triangle(n)
  counter = 1

  loop do 
    break if counter > n
    array = []
    counter.times { array << "*" }
    print array.join().rjust(n) + "\n"
    
    counter +=1
  end
end 

triangle(5)
triangle(9)