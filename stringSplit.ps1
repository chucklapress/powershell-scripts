$weirdneil = "Hey, hey, my, my. Out of the blue and into the black, You pay for this and they give you that. Once you're gone you can't come back, When you're out of the blue and into the black"
$weirdneil | ForEach-Object {$_.Split(" ")}

#TIL % is an alias for ForEach-Object, so this is the same function script
$weirdneil | % {$_.Split(" ")}
#Also this
1000,2000,3000 | % -Process {$_/1000}
