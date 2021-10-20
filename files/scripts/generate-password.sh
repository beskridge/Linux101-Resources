#!/bin/bash

# Grab the command line arguments
passwd_word_count=$1
separator=$2

# Start with a blank password
password=''

# Get the total number of words in the word list
total_word_count=`wc -l ../wordlist.txt | awk '{print $1;}'`


# Build the password using the specified number of words
for (( i=1; i<=$passwd_word_count; i++ ))
do
    # Generate a random number using OpenSSL to be cryptographically secure
    rand_num_hex=`openssl rand -hex 4`
    rand_num_dec=$((16#$rand_num_hex))

    # Use the random number as an index into the word list
    word_index=$(($rand_num_dec % $total_word_count))
    random_word=`awk -v idx="$word_index" '{if (NR==idx) print $1}' ../wordlist.txt`

    # Capitalize the word
    random_word_upper=`echo ${random_word^}`

    # Insert a separator if this isn't the first word in the password
    if [[ ${#password} -gt 0 ]]; then
        password=$password$separator$random_word_upper
    else
        password=$random_word_upper
    fi

done

echo $password

