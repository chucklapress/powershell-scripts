Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("It was a Monday A day like any other day, I left a small town For the apple in decay. It was my destiny, It's what we needed to do, They were telling me, I'm telling you")
