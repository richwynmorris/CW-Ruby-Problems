def solve(string)
  highest_letter = [string[0], 0]
  
  return string if string.length == 1
  return string.chars.sort.shift if string.chars.uniq == string.chars
  
  array = string.chars
  
  array.each do |char|
    value = array.slice(array.index(char)..array.rindex(char)).length
    if value > highest_letter[1]
      highest_letter = [char, value]
    elsif value == highest_letter[1]
      if char < highest_letter[0]
        highest_letter = [char, value]
      end
    else
      next
    end
  end
  
  highest_letter.shift
end