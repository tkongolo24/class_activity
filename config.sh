#!/bin/sh
#Approach 2
mkdir -p config
cd config
if [ ! -f "config.txt" ]; then
	touch "config.txt"
	echo "Done"
else 
	echo "Already exists"
fi

#Approach 1
create_directory() {
	dir_name=$1
  mkdir -p "$dir_name"
}

create_config_file() {
  dir_name=$1
  touch "$dir_name/config.txt"
}

directory_name="config"

create_directory "$directory_name"
create_config_file "$directory_name"

echo "Directory and config file created successfully!"

