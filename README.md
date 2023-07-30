# Language_Sep_Project

## Description

This Bash script automates the process of grouping files based on their detected language into separate sub-folders for each language. The script uses the filenames to identify the language, and it allows you to input the directory containing the files interactively while running the script.

## Requirements

- Linux environment (The script has been tested on Centos Linux 7)
- Bash shell

## Usage

1. Clone or download this repository to your local machine.
2. Open a terminal and navigate to the directory containing the script.
3. Make the script executable if necessary with the following command:

   ```bash
   chmod +x group_files_by_language.sh

## Notes

1.The script relies on filenames to determine the language, so ensure that your filenames follow the pattern of having the language name followed by a dash and a sequence number (e.g., "english-1.txt").
2.If you encounter any issues or errors while running the script, make sure to verify the path to the directory containing your files and that the filenames match the expected pattern.
