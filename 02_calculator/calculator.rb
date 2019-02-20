def add(a,b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(numbers)
    total = 0
    numbers.each { |number| total += number }
    total
end

def multiply(*numbers)
    total = 1
    numbers.each { |number| total *= number }
    total
end

def power(a, b)
    a ** b
end

def factorial(number)
    if number < 0
        "Number cannot be negative!"
    elsif number == 0
        1
    else
        total = 1
        while number > 0 do
            total *= number
            number -= 1
        end
        total
    end
end