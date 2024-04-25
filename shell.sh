#!/bin/bash

# Function to reverse a string
reverse_string() {
    local input="$1"
    local length="${#input}"
    local reversed=""

    # Loop through the characters of the input string in reverse order
    for (( i=$length-1; i>=0; i-- )); do
        reversed="$reversed${input:i:1}"
    done

    echo "$reversed"
}

# Usage example
input="A B C D E F G H I J K L M N O P Q  R S T U V W X Y Z"
reversed=$(reverse_string "$input")
echo "Original string: $input"
echo "Reversed string: $reversed"
