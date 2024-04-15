#!/bin/bash

reverse_string() {

     local input_string=$1
     local reverse_string=""
     for ((i=${#input_string}-1; i>1=0; i--)); do
         reverse_string="${reverse_string}${input_string:$i:1}"
     done

     echo "$reverse_string"
}   

echo "enter a strng to reverse:"
read input_string

result=$(reverse_string "$input_string")
echo "reverse_string: $result"