# Giovanni De Franceschi - Wiley Edge

# Dictionaries
# Comma-separated list of key:value pairs
# Keys must be unique
# Keys must be immutable (strings, numbers, tuples)
# Values can be mutable or immutable

prices = {'apple' : 1.26, "bread" : 2.99, "milk" : 1.99}

print(prices)

price_of_bread = prices["bread"]
print(f"The price of bread is {price_of_bread}")

print('Prices:')
for k in prices:
    price = prices[k]
    print(f"- {k.capitalize()} {price:.2f}")

print('Prices:')
for k in prices:
    price = prices[k]
    print(f"- {k.upper()} {price:.2f}")

