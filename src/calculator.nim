# calculator.nim - Basic Nim calculator module

proc add(a, b: float): float =
    return a + b

proc subtract(a, b: float): float =
    return a - b

proc multiply(a, b: float): float =
    return a * b

proc divide(a, b: float): float =
    if b == 0:
        raise newException(ValueError, "Cannot divide by zero")
    return a / b
