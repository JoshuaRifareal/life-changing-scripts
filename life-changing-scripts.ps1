# Set the window title
$host.ui.RawUI.WindowTitle = "life changing scripts"

# Function to check if the script exists and run it
function Run-ExternalScript {
    param (
        [string]$scriptPath
    )

    # Check if the script exists
    if (Test-Path $scriptPath) {
        Write-Host "Running external script: $scriptPath"
        # Run the external script
        & $scriptPath
    }
    else {
        Write-Host "External script not found at: $scriptPath" -ForegroundColor Red
    }
}

function Option1 {
    Write-Host "You selected Option 1. Running an external script..."
    $externalScriptPath = ".\tools\blenderkit.ps1"
    Run-ExternalScript -scriptPath $externalScriptPath
}

function Option2 {
    Write-Host "You selected Option 2. Running an external script..."
    $externalScriptPath = ".\externalScripts\externalScript2.ps1"
    Run-ExternalScript -scriptPath $externalScriptPath
}

function Option3 {
    Write-Host "You selected Option 3. Running an external script..."
    $externalScriptPath = ".\externalScripts\externalScript3.ps1"
    Run-ExternalScript -scriptPath $externalScriptPath
}

function Option4 {
    Write-Host "You selected Option 4. Running an external script..."
    $externalScriptPath = ".\externalScripts\externalScript4.ps1"
    Run-ExternalScript -scriptPath $externalScriptPath
}

# Function to display the menu and handle user input
function Show-Menu {
    Clear-Host
    Write-Host "Welcome to the Life Changing Scripts!" -ForegroundColor Cyan
    Write-Host "Choose an option by entering the corresponding number:"
    Write-Host "1. Download BlenderKit"
    Write-Host "2. Option 2 (Run external script 2)"
    Write-Host "3. Option 3 (Run external script 3)"
    Write-Host "4. Option 4 (Run external script 4)"
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
