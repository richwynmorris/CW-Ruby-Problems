a = 5

def fix(number)
	number = 7
end

fix(a)
p a 

# On line 1, the variable a is initalised with the value of the integer 5.
# The method fix is defined on line 3 with the parameter number.
# on line 3, the variable number is initalized and assigned the value of the integer 7.
# on line 7, fix is invoked and the variable a is passed to it as an arguement.
# a's value remains at 5, as number within the method is a new variable and a different
# object to that of a.
# on line 8, the p method is invoked and it returns tha value of a.
# p returns the integer 5. 

# `This is an example of variables as pointers and variable initalization.