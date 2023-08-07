#Giovanni De Franceschi - Wiley Edge

def calculate_area(width, height):
    area = width * height
    return area

print(calculate_area(5, 6))

print(calculate_area(10, 20))


def calculate_total_cost(price, tax =  1.0, shipping=5.00): #These are defaults values
    total_cost = price + price * tax + shipping
    return total_cost

print(calculate_total_cost(10,0.1, 5.00)) 


print(calculate_total_cost(1))


def print_args(*args): #any number of arguments
    for a in args:
        print(a)

print_args(1,2,3,4,5,6,7,8,9,10)

print_args("Marietto", 'Jack', "Joey")


#kwargs = keyword arguments
def print_kwargs(**kwargs):
    for key in kwargs:
        print(key, kwargs[key])

print_kwargs(name="Marietto", age=22, height=1.80, weight=80)

def print_kwargs(**kwargs):
    for key, value in kwargs.items():
        print(f"{key} = {value}")

def print_kwargs(**kwargs):
    for key, value in kwargs.items():
        print(f"{key} = {value}")

print_kwargs(name='John', age=30, city='New York')
