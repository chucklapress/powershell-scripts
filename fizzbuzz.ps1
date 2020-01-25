#fizzbuzz solution in powershell

for ($x = 1; $x -le 30; $x++) {
  $Output = ""

  if ($x % 3 -eq 0) { $Output += "Fizz" }
  if ($x % 5 -eq 0) { $Output += "Buzz" }
  if ($Output -eq "") { $Output = $x }

  Write-Output $Output
}
<# expected output
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
Fizz
22
23
Fizz
Buzz
26
Fizz
28
29
FizzBuzz
#>
$bugsbunnysays = "That's all folks"
Write-Host $bugsbunnysays
