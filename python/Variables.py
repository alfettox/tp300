#Giovanni De Franceschi - Wiley Edge

#variables is used to reference values to be used again later in the program
#variables must have types. In Java and c# variables variables are statically typed
#in python variables are dynamically typed. The type of the variable is determined by the value assigned to it
#the value is assigned to the variable using the assignment operator

my_name = "Giovanni" #Use single or double quotes to surround strings
my_age = 21

print(my_name)
print(my_age)


#Arrays
his_moods = ["sad", "happy", "angry", "confused"]

her_moods = his_moods

print(her_moods)

#Concatenate
print("Runny" + ' ' + "Camembert")

cheese  = "Gouda"
print(f"How about {cheese}?") #f-strings are used to format strings

price = 8.29
print(f"A pound of {cheese} will be ${price:.2f}.") #.2f is used to format the price to 2 decimal places

print(len ("NASA")) #len() is used to get the length of a string


#Characters in the string are indexed
#The first character is at index 0

print("NASA"[0]) #prints N

print("Giovanni De Franceschi"[9])

#negative numbers indexing

print("Giovanni De Franceschi"[-1]) #prints i

print("Giovanni"[:3]) #prints Gio
print("Giovanni"[2:]) #prints ovanni

