# Linux-Project [File-Organization]

## Overview

The *Linux File Management Project* is a menu-driven Bash script designed to perform essential file and directory management operations in a Linux environment. This project was developed as part of a Linux lab course to demonstrate proficiency in Bash scripting and core Linux commands. It provides an interactive interface for users to manage files and directories efficiently, with built-in error handling and compatibility for online Bash compilers like Replit.

### Key Features

- *List Files and Directories*: Displays all files and directories in the current folder.
- *Create Files/Directories*: Allows users to create new files or directories.
- *Delete Files/Directories*: Safely deletes files (with confirmation) or empty directories.
- *Copy and Move Files*: Supports copying and moving/renaming files.
- *Search Files*: Finds files by name or pattern in the current directory and subdirectories.
- *Current Directory*: Shows the current working directory path.
- *User-Friendly Interface*: A clear menu-driven interface for easy navigation.

## Description

This project is a Bash script (file_manager.sh) that simplifies file and directory management tasks for beginners and intermediate Linux users. It uses standard Linux commands such as ls, touch, rm, mkdir, rmdir, cp, mv, find, and pwd, wrapped in a script with a loop and case statements for interactivity. The script includes error-checking mechanisms (e.g., checking for file existence) to prevent errors and uses safe commands (e.g., rm -i for confirmation before deletion) to ensure user control.

The script is portable and tested on online Bash compilers like Replit, making it accessible for educational purposes. It serves as a practical tool to learn Linux file operations and Bash scripting concepts, such as loops, conditionals, functions, and user input handling.

## How It Works

1. *Script Execution*:
   - Save the script as file_manager.sh.
   - Make it executable: chmod +x file_manager.sh.
   - Run it: ./file_manager.sh.

2. *Menu Interface*:
   - Upon running, the script displays a menu with 10 options:
     
     
        [ Linux File Management Project ]  
    
     1. List files and directories in current folder
     2. Create a new file
     3. Delete a file
     4. Create a new directory
     5. Delete a directory
     6. Copy a file
     7. Move/rename a file
     8. Search for files by name
     9. Display current working directory
     10. Exit
         
     Output:-
     Enter your choice (1-10): 
     
   - Users enter a number (1–10) to select an action.

3. *Functionality*:
   - *Option 1*: Lists files and directories using ls -la.
   - *Option 2*: Creates a file with touch after checking if it exists.
   - *Option 3*: Deletes a file with rm -i (prompts for confirmation).
   - *Option 4*: Creates a directory with mkdir.
   - *Option 5*: Deletes an empty directory with rmdir.
   - *Option 6*: Copies a file using cp.
   - *Option 7*: Moves or renames a file using mv.
   - *Option 8*: Searches for files with find . -name.
   - *Option 9*: Displays the current directory with pwd.
   - *Option 10*: Exits the script.

4. *Error Handling*:
   - Checks for file/directory existence to avoid errors.
   - Uses safe commands (e.g., rm -i for confirmation, rmdir for empty directories).
   - Provides clear feedback (e.g., "File already exists" or "Directory deleted").

