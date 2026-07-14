#!/bin/bash
# simple-interest.sh
# A simple calculator to compute Simple Interest based on user input.
# Formula: Simple Interest (SI) = (P * R * T) / 100

echo "===== Simple Interest Calculator ====="

read -p "Enter the Principal amount: " principal
read -p "Enter the Rate of Interest (in %): " rate
read -p "Enter the Time period (in years): " time

# Basic input validation - only allow numbers (with optional decimals)
if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "Simple Interest  : $simple_interest"
echo "---------------------------------------"
