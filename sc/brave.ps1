$repo = "brave/brave-browser"
$file = "BraveBrowserStandaloneSilentDevSetup.exe"

$releases = "https://api.github.com/repos/$repo/releases"


Write-Host Determining latest release
$tag = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name

$download = "https://github.com/$repo/releases/download/$tag/$file"
$name = $file.Split(".")[0]
$exeFile = "$name.exe"

Write-Host Dowloading latest release
Invoke-WebRequest $download -Out $exeFile

start $exeFile
pause
