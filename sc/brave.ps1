$repo = "brave/brave-browser"
$file = "BraveBrowserStandaloneDevSetup.exe"

$releases = "https://api.github.com/repos/$repo/releases"


#Write-Host Determining latest release
#$tag = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name

$tag = "v1.35.76"

$download = "https://github.com/$repo/releases/download/$tag/$file"
$name = $file.Split(".")[0]
$exeFile = "$name.exe"

Write-Host Dowloading latest release
Invoke-WebRequest $download -Out $exeFile

start $exeFile
pause
