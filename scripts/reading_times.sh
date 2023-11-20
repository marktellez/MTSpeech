#!/bin/bash

# Directory containing the text files
directory="./readings"

# Total words counter
total_words=0

# Loop through each text file in the directory
for file in "$directory"/*.txt; do
    # Count the words in this file
    words_in_file=$(wc -w < "$file")
    # Add to total words
    total_words=$((total_words + words_in_file))
    # Calculate reading time for this file in seconds (rounded up)
    reading_time_file=$(( (words_in_file * 60 + 199) / 200 )) # 60 seconds per minute, 200 words per minute
done

# Calculate total reading time in minutes
total_reading_time=$((total_words / 200))

# Convert total reading time into hours, minutes, and seconds
hours=$((total_reading_time / 60))
minutes=$((total_reading_time % 60))
seconds=$(( (total_words % 200) * 60 / 200 ))

echo "Total reading time for all files: $hours hours, $minutes minutes, and $seconds seconds"
