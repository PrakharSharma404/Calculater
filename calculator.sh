#!/bin/bash

# Function to calculate square root using awk
square_root() {
    echo -n "Enter number to find square root: "
    read num
    result=$(awk "BEGIN {print sqrt($num)}")
    echo "Square root of $num is: $result"
}

# Function to calculate factorial
factorial() {
    echo -n "Enter number to find factorial: "
    read num
    fact=1
    for ((i=1;i<=num;i++))
    do
        fact=$((fact * i))
    done
    echo "Factorial of $num is: $fact"
}

# Function to calculate natural logarithm using awk
natural_log() {
    echo -n "Enter number to find natural logarithm (ln): "
    read num
    result=$(awk "BEGIN {print log($num)}")
    echo "Natural logarithm (ln) of $num is: $result"
}

# Function to calculate power using awk
power_function() {
    echo -n "Enter base number (x): "
    read x
    echo -n "Enter exponent (b): "
    read b
    result=$(awk "BEGIN {print $x ^ $b}")
    echo "$x raised to the power of $b is: $result"
}

# Menu-driven calculator
while true
do
    echo "Scientific Calculator Menu"
    echo "1. Square root (√x)"
    echo "2. Factorial (x!)"
    echo "3. Natural logarithm (ln(x))"
    echo "4. Power function (x^b)"
    echo "5. Exit"
    echo -n "Enter your choice: "
    read choice

    case $choice in
        1) square_root ;;
        2) factorial ;;
        3) natural_log ;;
        4) power_function ;;
        5) echo "Exiting..."; exit ;;
        *) echo "Invalid choice. Please select again." ;;
    esac
    echo ""
done
