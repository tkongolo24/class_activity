#!/bin/sh

# Prompt the user to enter a directory name
echo -n "Enter the name of the directory: "
read dir_name

# Define the file names
file1="submission1.txt"
file2="submission2.txt"

# Check if a file (not a directory) with that name exists
if [ -f "$dir_name" ]; then
  echo "Error: A file named '$dir_name' already exists and is not a directory."
  exit 1
fi

# If the directory exists
if [ -d "$dir_name" ]; then
  echo "Directory '$dir_name' already exists."
  echo "Creating $file1 and $file2 inside it..."
else
  # If the directory does not exist
  echo "Directory '$dir_name' does not exist. Creating it..."
  mkdir -p "$dir_name"
  echo "Directory created."
fi

# Create the two files inside the directory
touch "$dir_name/$file1"
touch "$dir_name/$file2"
echo "Files created: $file1, $file2 in '$dir_name' directory."

