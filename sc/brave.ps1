cd $env:userprofile\Downloads

$repo = "brave/brave-browser"
$file = "BraveBrowserStandaloneSilentSetup.exe"
$localappdata = $env:LOCALAPPDATA
$tag = "v1.39.111"

#$releases = "https://api.github.com/repos/$repo/releases"
#Write-Host Determining latest release
#$tag = (Invoke-WebRequest $releases | ConvertFrom-Json)[0].tag_name

$download = "https://github.com/$repo/releases/download/$tag/$file"
$name = $file.Split(".")[0]
$exeFile = "$name.exe"

Write-Host Dowloading Brave
Start-BitsTransfer $download $exeFile

start $exeFile
Write-Host Installing Brave
while (!(Test-Path "$localappdata\BraveSoftware\Brave-Browser\Application\brave.exe")) { Start-Sleep 10 }
exit
