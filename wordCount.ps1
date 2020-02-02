#powershell to strip and examine a file
#$words = "Ira Hayes. Call him drunken Ira Hayes, He won't answer anymore, Not the whiskey drinking Indian, Or the marine that went to war. Gather 'round me people, There's a story I would tell 'Bout a brave young Indian You should remember well From the land of the Pima Indian, A proud and noble band, Who farmed the Phoenix Valley In Arizona land."
$FileName = "Users/chucklapress/temps/test.txt"
$words = Get-Content $FileName
$words = $words.ToLower() -replace "[.,!?)(]",""
$words = $words -replace "([^a-z])'([^a-z])","`${1}`${2}"
$words = $words -replace "'","''"
$words | Measure-Object -Character -Line -Word

<# expected output
new expected output
Lines Words Characters Property
----- ----- ---------- --------
  161  7510      39538

Lines Words Characters Property
----- ----- ---------- --------
    1    62        334
#>
#Write-Host "Man in black"
Write-Host "JRR Tolkien Two Towers Chapter Seven"
