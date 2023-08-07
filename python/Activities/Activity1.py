#Giovanni De Franceschi Wiley Edge


#Activity 1
money_in_wallet = float(input("How much money do you have in your wallet? $"))
if money_in_wallet >= 20:
    print("You're rich!")
else:
    print("You're broke!")

# Activity2
has_cats = input("Do you own any cats? (Yes/No) ")
has_dogs = input("Do you own any dogs? (Yes/No) ")

if has_cats.lower() == 'yes' and has_dogs.lower() == 'yes':
    print("You must really love pets!")
else:
    print("Maybe you need more pets.")


# Activity 2b
has_cats = input("Do you own any cats? (Yes/No) ")
has_dogs = input("Do you own any dogs? (Yes/No) ")

if has_cats.lower() == 'yes' and has_dogs.lower() == 'yes':
    print("You must really love pets!")
else:
    print("Maybe you need more pets.")

# Activity 2c
has_cats = input("Do you own any cats? (Yes/No) ")
has_dogs = input("Do you own any dogs? (Yes/No) ")

output = "You must really love pets!" if has_cats.lower() == 'yes' and has_dogs.lower() == 'yes' else "Maybe you need more pets."
print(output)


#Activity 3
questions = [
    ("Question 1: ...", True),
    ("Question 2: ...", False),
]

correct_answers = 0

for question, correct_answer in questions:
    user_answer = input(question + " (True/False) ").lower()
    if user_answer == 'true' and correct_answer or user_answer == 'false' and not correct_answer:
        correct_answers += 1

total_questions = len(questions)
correct_response_rate = correct_answers / total_questions * 100

print("\nResults:")
for question, correct_answer in questions:
    print(f"{question} Correct Answer: {correct_answer}")

print("\nYour Correct Response Rate: {:.2f}%".format(correct_response_rate))


#Activity 4
season = input("What season is it? (fall/winter/spring/summer) ").lower()

if season == 'fall':
    print("I bet the leaves are pretty there!")
elif season == 'winter':
    print("I hope you're ready for snow!")
elif season == 'spring':
    print("I can smell the flowers!")
elif season == 'summer':
    print("Make sure your AC is working!")
else:
    print("I don't recognize that season.")


#Activity 4b
season = input("What season is it? (fall/winter/spring/summer) ").lower()

match season:
    case 'fall' | 'autumn':
        print("I bet the leaves are pretty there!")
    case 'winter':
        print("I hope you're ready for snow!")
    case 'spring':
        print("I can smell the flowers!")
    case 'summer':
        print("Make sure your AC is working!")
    case _:
        print("I don't recognize that season.")
