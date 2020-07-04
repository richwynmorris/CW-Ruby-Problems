# Modify the kebabize function so that it converts a camel case string into a kebab case.

# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps

# Notes:

#     the returned string should only contain lowercase letters


# Input: a string that is camelcased
# Output a string that has been converted to a kebabcase, using hyphens
# Rules: should only return lowecase letters

def kebabize(string)
  words = string.split(/(?=[A-Z])/)
  
  words.each do |word|
    if word.match?(/[0-9]/)
      word.gsub!(/[0-9]/, '')
    else
      next
    end
  end
  
  words.each_with_index do |word, index|
    words.delete_at(index) if word == '' 
  end
    
  if words.length.eql?(1)
    return words.pop.downcase
  else
    return words.join('-').downcase!
  end
  
end 

p kebabize('camelsHaveThreeHumps')
p kebabize('camelsHave3Humps')