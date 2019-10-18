#write your code here
def add(number1, number2)
    number1 + number2
end

def subtract(number1, number2)
    number1 - number2
end

def sum(arr1)
    total = 0
    arr1.each do |num|
        total = num + total
    end

    return total
end

def multiply(arr1)
    total = 1
    arr1.each do|num|
        total *= num
    end
    return total
end

def power(number1, number2)
    number1 ** number2
end

def factorial(number)
    total = 1
    if number == 0
        return 1
    end

    while number > 0 do
        total *= number
        number -= 1
    end
return total
end




