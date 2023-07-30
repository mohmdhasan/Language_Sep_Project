
#!/bin/bash

# Prompt the user for the directory containing the files
read -p "Enter the path to the directory containing your files: " files_directory

# Function to get the language from a file name (case-insensitive)
get_language_from_filename() {
    local filename="${1,,}"  # Convert filename to lowercase for case-insensitive comparison
    local language

    # Check if the filename contains a dash
    if [[ "$filename" == *-* ]]; then
        language=$(echo "$filename" | awk -F '-' '{print $1}')
    else
        language="$filename"
    fi

    echo "$language"
}

# Move files into their respective language sub-folders
for file in "$files_directory"/*; do
    if [ -f "$file" ]; then
        language=$(get_language_from_filename "$(basename "$file")")
        language_directory="$files_directory/$language"

        # Create the language sub-folder if it doesn't exist
        if [ ! -d "$language_directory" ]; then
            mkdir "$language_directory"
        fi

        mv "$file" "$language_directory"
    fi
done
