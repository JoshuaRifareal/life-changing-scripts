# Set the window title
$host.ui.RawUI.WindowTitle = "@joshuarifareal scripts"

# Function to handle Option 1
function Option1 {
    Write-Host "You selected Option 1. Here is the information for Option 1."
    # You can add more actions or logic here
}

# Function to handle Option 2
function Option2 {
    Write-Host "You selected Option 2. Here is the information for Option 2."
    # Add more actions or logic for Option 2 here
}

# Function to handle Option 3
function Option3 {
    Write-Host "You selected Option 3. Here is the information for Option 3."
    # Add more actions or logic for Option 3 here
}

# Function to handle Option 4
function Option4 {
    Write-Host "You selected Option 4. Here is the information for Option 4."
    # Add more actions or logic for Option 4 here
}

# Function to display the menu and handle user input
function Show-Menu {
    Clear-Host
    Write-Host "Welcome to the Script Menu" -ForegroundColor Cyan
    Write-Host "Please choose an option by entering the corresponding number:"
    Write-Host "1. Option 1"
    Write-Host "2. Option 2"
    Write-Host "3. Option 3"
    Write-Host "4. Option 4"
    Write-Host "0. Exit"
}

# Function to handle user input and call corresponding function
function Handle-Input {
    $userInput = Read-Host "Enter your choice (number)"

    switch ($userInput) {
        '1' { Option1 }
        '2' { Option2 }
        '3' { Option3 }
        '4' { Option4 }
        '0' { Write-Host "Exiting script. Goodbye!" -ForegroundColor Green; exit }
        default { Write-Host "Invalid choice. Please enter a number between 0 and 4." -ForegroundColor Red }
    }
}

# Main loop to continuously show menu until user exits
do {
    Show-Menu
    Handle-Input
} while ($true)
