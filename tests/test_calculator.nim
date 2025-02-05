import unittest
import ../src/calculator

suite "Calculator Tests":
    test "Addition":
        check add(2, 3) == 5

    test "Subtraction":
        check subtract(5, 3) == 2

    test "Multiplication":
        check multiply(4, 5) == 20

    test "Division":
        check divide(10, 2) == 5

    test "Division by zero":
        expect(ValueError):
            discard divide(10, 0)
