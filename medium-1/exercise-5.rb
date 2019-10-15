def diamond(int)
  1.upto(int) do |num|
    if num.odd?
      spacing = (int - num / 2)
      puts (' '* spacing) + ('*' * num) + (' ' * spacing)
    end
  end
  (int-1).downto(1) do |num|
  if num.odd?
    spacing = (int - num / 2)
    puts (' '* spacing) + ('*' * num) + (' ' * spacing)
  end
end
end

diamond(9)