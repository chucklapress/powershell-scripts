node {
    pwsh 'Write-Output "Hello, World!"'
}
stage ('One') {
    node ('masterserver') {
        pwsh(script: '/Users/chucklapress/powershell_scripts/usefulScripts/stringSplit.ps1')
    }
}
stage ('Two') {
    node ('masterserver') {
        pwsh(script: 'Get-Date -Format "dddd MM/dd/yyyy HH:mm')
    }
}
stage ('Three') {
    node ('masterserver') {
        pwsh(script: 'Move-Item /Users/chucklapress/test1.txt -Destination /Users/chucklapress/powershell_scripts/usefulScripts/tst1.txt -Force')
    }
}
