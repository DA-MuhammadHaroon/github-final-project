#!/bin/bash

# Simple Interest Calculator

echo "====================================="
echo "     SIMPLE INTEREST CALCULATOR      "
echo "====================================="

# Prompt user for the principal amount
read -p "Enter the Principal Amount: " principal

# Prompt user for the annual rate of interest
read -p "Enter the Annual Rate of Interest (%): " rate

# Prompt user for the time period in years
read -p "Enter the Time Period (in years): " time

# Perform floating-point calculation using 'bc'
# scale=2 ensures the final output is rounded to 2 decimal places
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Calculate the final total amount (Principal + Interest)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)

echo "====================================="
echo "RESULTS:"
echo "-------------------------------------"
echo "Calculated Simple Interest: $simple_interest"
echo "Total Payable Amount      : $total_amount"
echo "====================================="
