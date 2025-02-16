# calculator.nim - Basic Nim calculator module
{.experimental: "strictFuncs".}

type
  CalculatorError = object of ValueError

proc add[T: SomeNumber](a, b: T): T =
    ## Adds two numbers.
    result = a + b

proc subtract[T: SomeNumber](a, b: T): T =
    ## Subtracts two numbers.
    result = a - b

proc multiply[T: SomeNumber](a, b: T): T =
    ## Multiplies two numbers.
    result = a * b

proc divide[T: SomeNumber](a, b: T): T =
    ## Divides two numbers. Raises a CalculatorError if dividing by zero.
    if b == 0:
        raise newException(CalculatorError, "Cannot divide by zero")
    result = a / b

proc modulus[T: SomeInteger](a, b: T): T =
    ## Returns the remainder of division (modulus).
    if b == 0:
        raise newException(CalculatorError, "Cannot perform modulus with zero")
    result = a mod b