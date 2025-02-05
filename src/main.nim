import calculator, strutils

proc main() =
    echo "Welcome to Nim Calculator!"
    echo "Enter operation (add, subtract, multiply, divide): "
    let operation = readLine().strip()

    echo "Enter first number: "
    let a = parseFloat(readLine())

    echo "Enter second number: "
    let b = parseFloat(readLine())

    case operation:
        of "add":
            echo "Result: ", add(a, b)
        of "subtract":
            echo "Result: ", subtract(a, b)
        of "multiply":
            echo "Result: ", multiply(a, b)
        of "divide":
            try:
                echo "Result: ", divide(a, b)
            except ValueError:
                echo "Error: Cannot divide by zero!"
        else:
            echo "Invalid operation."

main()
