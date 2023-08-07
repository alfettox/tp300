password = "admin"

if password == "admin":
    print("Password correct.")

if password != "admin":
    print("Password incorrect.")

age = 21


if age >= 16:
    print("This person is allowed to drive.")
if age < 16:
    print("This person is NOT allowed to drive.")

x = 5
y = 0

if x:
    print("x is truthy")

if not x:
    print("x is falsy")

if y:
    print("y is truthy")

if not y:
    print("y is falsy")


#Exercise 3
name = "a"

if name:
    print(f"Nice to meet you, {name}")

if not name:
    print("No name entered")


correct_username = "admin"
correct_password = "FgheXT254d"

guessed_username = "Admin"
guessed_password = "FgheXT254d"

if guessed_username == correct_username and guessed_password == correct_password:
    print("Access granted.")
if guessed_username != correct_username or guessed_password != correct_password:
    print("Access denied.")


color = "yellow"

if color == "red":
    print("The color is red.")
elif color == "blue":
    print("The color is blue.")
elif color == "yellow":
    print("The color is yellow.")
else:
    print("Please enter a valid color.")

x = 5
y = "Greater than 5" if x > 5 else "Less than or equal to 5"
print(y)

x = 5
if x > 0:
    result = "Positive"
else:
    result = "Non-positive"
print(result)

x = "Greather than 0 " if x >0 else "Negative"

x = 5

match x:
    case 1 | 2 | 3:
        print("x is 1, 2, or 3")
    case 4 | 5 | 6:
        print("x is 4, 5, or 6")
    case 7 | 8 | 9:
        print("x is 7, 8, or 9")


value = [1, 3, 5]

match value:
  case str():
    print("It is a string!")
  case bool():
    print("It is a boolean!")
  case int():
    print("It is an integer!")
  case list():
    print("It is a list!")
  case _:
    print(f"It is a {type(value)}!")