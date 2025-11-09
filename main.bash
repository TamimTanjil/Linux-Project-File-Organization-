display_menu() {
    echo "====================================="
    echo "    Linux File Management Project    "
    echo "====================================="
    echo "1. List files and directories in current folder"
    echo "2. Create a new file"
    echo "3. Delete a file"
    echo "4. Create a new directory"
    echo "5. Delete a directory"
    echo "6. Copy a file"
    echo "7. Move/rename a file"
    echo "8. Search for files by name"
    echo "9. Display current working directory"
    echo "10. Exit"
    echo "====================================="
    echo -n "Enter your choice (1-10): "
}
while true; do
    display_menu
    read choice

    case $choice in
        1)
            echo "Listing files and directories in $(pwd):"
            ls -la
            ;;
        2)
            echo -n "Enter the name of the file to create: "
            read filename
            if [ -e "$filename" ]; then
                echo "File '$filename' already exists."
            else
                touch "$filename"
                echo "File '$filename' created."
            fi
            ;;
        3)
            echo -n "Enter the name of the file to delete: "
            read filename
            if [ -e "$filename" ]; then
                rm -i "$filename"
                echo "File '$filename' deleted (if confirmed)."
            else
                echo "File '$filename' does not exist."
            fi
            ;;
        4)
            echo -n "Enter the name of the directory to create: "
            read dirname
            if [ -d "$dirname" ]; then
                echo "Directory '$dirname' already exists."
            else
                mkdir "$dirname"
                echo "Directory '$dirname' created."
            fi
            ;;
        5)
            echo -n "Enter the name of the directory to delete: "
            read dirname
            if [ -d "$dirname" ]; then
                rmdir "$dirname"  
                echo "Directory '$dirname' deleted (if empty)."
            else
                echo "Directory '$dirname' does not exist."
            fi
            ;;
        6)
            echo -n "Enter the source file name: "
            read source
            echo -n "Enter the destination file name or path: "
            read dest
            if [ -e "$source" ]; then
                cp "$source" "$dest"
                echo "File copied from '$source' to '$dest'."
            else
                echo "Source file '$source' does not exist."
            fi
            ;;
        7)
            echo -n "Enter the source file name: "
            read source
            echo -n "Enter the destination file name or path: "
            read dest
            if [ -e "$source" ]; then
                mv "$source" "$dest"
                echo "File moved/renamed from '$source' to '$dest'."
            else
                echo "Source file '$source' does not exist."
            fi
            ;;
        8)
            echo -n "Enter the file name or pattern to search (e.g., *.txt): "
            read pattern
            echo "Searching for '$pattern' in current directory and subdirectories:"
            find . -name "$pattern"
            ;;
        9)
            echo "Current working directory: $(pwd)"
            ;;
        10)
            echo "Exiting the file manager. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 10."
            ;;
    esac

    echo "" 
    echo "Press Enter to continue..."
    read  
done