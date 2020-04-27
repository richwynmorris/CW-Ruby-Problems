=begin 

Problem:
You're working in a number zoo, and it seems that one of the numbers has gone missing!

Zoo workers have no idea what number is missing, and are too incompetent to figure it out, so they're hiring you to do it for them.

In case the zoo loses another number, they want your program to work regardless of how many numbers there are in total.

Task:

Write a function that takes a shuffled list of unique numbers from 1 to n with one element missing (which can be any number including n). Return this missing number.

Note: huge lists will be tested.
Examples:

[1, 3, 4]  =>  2
[1, 2, 3]  =>  4
[4, 2, 3]  =>  1

Input: an array of numbers
Output: the missing integer from the sequence. 
Rules: 
      Explicit: there will always be one element missing.
      Implicit: if the pattern is complete with 1, add the last number.
                if the pattern is complete but 1 is missing, add one
                if the pattern if missing a number between, return the missing number.

Mental Model:
if array doesn't include 1, return 1. iterate through the array and check for any missing
numbers in the sequence. If there's not missing numbers return the last object in the array plus 1. 

Algorithm:
    define the method find_missing_number with one parameter, numbers.
    return 1 if numbers.include?(1) returns false
    number to call the each method. If the element at index position 1, 
    is equal to the the current element + 1, next.
    else return index + 1.

    return numbers.pop + 1 


=end

 def find_missing_number(numbers)
  
  numbers.sort!

	return 1 if numbers[0] != 1

	numbers.each_with_index do |element, index|
		next if numbers[index + 1] == element + 1
			return element + 1
	end

	return numbers.pop + 1

end


