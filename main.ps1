# Define the path and name of the script to be run
$scriptPath = "C:\Scripts\MyLogonScript.ps1"

# Define the name of the Group Policy object to modify
$gpoName = "Default Domain Policy"

# Open the Group Policy Editor and navigate to the Logon scripts section
Start-Process "gpedit.msc"
Start-Sleep -Seconds 5
[System.Windows.Forms.SendKeys]::SendWait("^{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

# Add the script to the Logon scripts section
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{DOWN}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{TAB}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("$scriptPath")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")

# Save the changes to the Group Policy
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("^{S}")
Start-Sleep -Seconds 1
[System.Windows.Forms.SendKeys]::SendWait("^{Q}")

# Apply the Group Policy to the computer
Invoke-GPUpdate -Computer $env:COMPUTERNAME -Target "Computer" -Force

# Display a message to the user
Write-Host "The script has been added to the Group Policy. It will run automatically the next time a user logs in."
