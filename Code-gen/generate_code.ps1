# Read user input from the PowerShell window
$codeInput = Read-Host "Enter code input: "

# Read code brain from "codebrain.txt" file
$codeBrain = Get-Content -Path ".\codebrain.txt" -Raw

# Read code data from "codedata.txt" file
$codeData = Get-Content -Path ".\codedata.txt" -Raw

# Generate unique code based on user input
$generatedCode = $codeBrain + $codeInput + $codeData

# Save the generated code as "code.txt"
$generatedCode | Set-Content -Path ".\code.txt"
