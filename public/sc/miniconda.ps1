Start-BitsTransfer "https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe" "Miniconda3.exe"
cmd /c 'start /wait "" Miniconda3.exe /InstallationType=JustMe /AddToPath=1 /S /D=%UserProfile%\Miniconda3'
