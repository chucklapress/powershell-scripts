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
        pwsh(script: 'Get-Date -Format "dddd MM/dd/yyyy HH:mm"')
    }
}
stage ('Three') {
    node ('masterserver') {
        pwsh(script: '"happy people eat spicy pho for lunch" | Measure-Object -Character -Line -Word | Out-File -FilePath /Users/chucklapress/temps/OUTPUT.txt')
    }
}
