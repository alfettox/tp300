# Giovanni De Franceschi - Wiley Edge

from pickle import TRUE #pickle is a module that converts python objects into a character stream and vice versa

#false 1
print(not TRUE)

#false 2
x =30
y =5
print(x < y)

#false 3
print(2 == 3)

#comparison operators
# == equal to
# != not equal to
# > greater than
# < less than
# >= greater than or equal to
# <= less than or equal to

print(2000>1999) #true

print("sage" in "sausage") #true

print(10 in [1,2,3,4,5,10,12,15]) #true


first_list = [1,2,3]
second_list = first_list
third_list = [1,2,3]

print(first_list == second_list) #true
print(first_list is second_list) #true  - is is used to check if two variables point to the same object
print(first_list is third_list) #false
print(first_list == third_list) #true

#in membership operator
#is identity operator


my_list = [77, 1,36, "Giovanni"]

print(my_list[0]) #prints 77
print(my_list[3]) #prints Giovanni
print(my_list[-1]) #prints Giovanni
print(my_list[-2]) #prints 36
my_list[2] = "caffé"

print(my_list)

my_list2 = [1,2,3,4,5,6,7,8,9,10]

print(my_list2[1:3]) 
print(my_list2[:3]) 


del my_list2[2]
print(my_list2)