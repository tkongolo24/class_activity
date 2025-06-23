#!/usr/bin/python3
# Define the correct password
pass_word = "00000"

# Track the number of attempts
attempt = 0

while True:
    password = input("Enter your password: ")
    attempt += 1

    #Count digits using a for loop 
    d_count = 0
    for char in password:
        if char.isdigit():
            d_count += 1

    #Retry alert 
    if attempt > 2:
        print("Alert: To many attempt.")

    #Digit check
    if d_count == 0:
        print("Error: Need a digit.")
    elif password != pass_word:
        print("Access denied.")
    else:
        print("Welcome back!")
        break  # Exit the loop if password is correct

