#!/bin/bash
# -----------------------------------------------------------------------------
# SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR: A Terminal-Based Financial Utility
# 
# This source file is part of a curated Computer Engineering project collection.
# It is preserved as a finalized technical artifact representing the application 
# of Shell Scripting (Bash) for financial logic and terminal-based UI.
# 
# AUTHOR: Amey Thakur (https://github.com/Amey-Thakur)
# REPOSITORY: https://github.com/Amey-Thakur/SIMPLE-AND-COMPOUND-INTEREST-CALCULATOR
# ORIGINAL RELEASE: August 12, 2020
# 
# LICENSE: MIT License
# -----------------------------------------------------------------------------

# Start an infinite loop to keep the menu active until the user chooses to exit
while true
do
    # -------------------------------------------------------------------------
    # Display the Main Menu
    # -------------------------------------------------------------------------
    echo ""
    echo "=========================================="
    echo "    SIMPLE & COMPOUND INTEREST CALCULATOR"
    echo "=========================================="
    echo "1. Calculate Simple Interest"
    echo "2. Calculate Compound Interest"
    echo "3. Exit"
    echo "=========================================="
    
    # Prompt user for menu choice
    read -p "Enter Your Choice (1-3): " choice
    echo ""

    case $choice in
        
        # ---------------------------------------------------------------------
        # Case 1: Simple Interest Calculation
        # Formula: SI = (P * T * R) / 100
        # ---------------------------------------------------------------------
        1) 
            echo "--- Simple Interest Calculation ---"
            
            # Input: Principal Amount
            read -p "Enter Principal Amount (P): " p
            
            # Input: Time Period
            read -p "Enter Time Period in Years (T): " t
            
            # Input: Rate of Interest
            read -p "Enter Annual Rate of Interest (R): " r
            
            # Logic: Calculate SI using 'bc' for floating-point precision (scale=2)
            si=$(echo "scale=2; ( $p * $t * $r ) / 100" | bc)
            
            echo "------------------------------------------"
            echo "Result: Simple Interest = $si"
            echo "------------------------------------------"
            ;;

        # ---------------------------------------------------------------------
        # Case 2: Compound Interest Calculation
        # Formula: CI = P * (1 + R/N)^(N*T)
        # ---------------------------------------------------------------------
        2) 
            echo "--- Compound Interest Calculation ---"
            
            # Input: Principal Amount
            read -p "Enter Principal Amount (P): " p
            
            # Input: Time Period
            read -p "Enter Time Period in Years (T): " t
            
            # Input: Rate of Interest
            read -p "Enter Annual Rate of Interest (R): " r
            
            # Input: Compounding Frequency
            echo "Enter number of times interest is compounded per year (n):" 
            echo "(e.g., 1 for Annually, 2 for Semi-annually, 4 for Quarterly, 12 for Monthly)"
            read -p "Value for n: " n
            
            # Logic: Calculate the Exponent Power (N * T)
            # Using 'expr' for integer arithmetic logic
            power=$(expr $n \* $t)
            
            # Logic: Calculate CI using 'bc'
            # Note: Rate r is treated as a percentage in the standard formula derived from user input
            # Formula used here: A = P * (1 + R/n)^nt. However, usually R is R/100.
            # Assuming input R is kept as is per original logic, or adjusted if R is standard percentage.
            # Based on original script logic: ( 1 + $r / $n ).
            
            # Calculation
            amount=$(echo "scale=2; $p * ( 1 + $r / 100 / $n ) ^ $power" | bc)
            # Reverting to original logic style but safer: P * (1 + r/n)^nt
            # Note: User's original script didn't divide R by 100 inside the parenthesis for CI but did for SI. 
            # Standard CI formula is A = P(1 + r/n)^(nt) where r is decimal. 
            # If user usually enters '5' for 5%, then it should be 0.05.
            # Let's stick closer to the user's original mathematical flow but clean syntax.
            
            # Correcting the formula for accuracy: R needs to be a decimal (R/100) or 'r' represents the decimal.
            # Original code was: $p * ( 1 + $r / $n ) ^ $power. 
            # If user enters 5 for 5%, 5/1 is 5. (1+5)^1 = 6. 100*6 = 600. That's huge. 
            # It implies the original code might have expected decimal input or had a logic bug.
            # I will apply the standard division by 100 to make it user-friendly (User enters 5 for 5%).
            
            # CI Calculation (Amount)
            # A = P * (1 + (R/100)/N) ^ (N*T)
            ci=$(echo "scale=4; $p * ( (1 + ($r / 100) / $n) ^ $power )" | bc)
            
            # To isolate just the Interest component (CI = Amount - P)
            # final_interest=$(echo "scale=2; $ci - $p" | bc)
            
            echo "------------------------------------------"
            echo "Total Amount (Principal + Interest) = $ci"
            echo "------------------------------------------"
            ;;

        # ---------------------------------------------------------------------
        # Case 3: Exit
        # ---------------------------------------------------------------------
        3) 
            echo "Exiting Calculator. Goodbye!"
            exit 0
            ;;

        # ---------------------------------------------------------------------
        # Default Case: Invalid Input
        # ---------------------------------------------------------------------
        *) 
            echo "Error: Invalid Choice. Please enter 1, 2, or 3."
            ;;
            
    esac
    # Pause for user readability before clearing or separating iterations
    echo ""
done