$ahkPath = "$env:HOMEPATH\autohotkey"
Copy-Item .\autohotkey $ahkPath -Recurse -Force

Get-ChildItem .\dotfiles | ForEach-Object { Copy-Item $_.FullName $env:HOMEPATH -Force }


$WshShell = New-Object -comObject WScript.Shell
Get-ChildItem $ahkPath | ForEach-Object {  
    
    $Shortcut = $WshShell.CreateShortcut("${Env:APPDATA}\Microsoft\Windows\Start Menu\Programs\Startup\$_.lnk")
    $Shortcut.TargetPath = $_.FullName
    $Shortcut.Save()
}

xcopy.exe ".\Console2\console.xml" "${Env:APPDATA}\console\" /E

[Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem')

foreach($sourceFile in [System.IO.Compression.ZipFile]::OpenRead("dejavu-fonts-ttf-2.34.zip").Entries)
{
    Copy-Item $sourceFile.FullName "c:\windows\fonts" -Force
}


# set-alias sz ${Env:ProgramFiles}\7zip\7z.exe

# sz e .\fonts\dejavu-fonts-ttf-2.34.zip .\tmp -aoa

# $sa =  new-object -comobject shell.application
# $Fonts =  $sa.NameSpace(0x14)

# Get-ChildItem .\tmp | ForEach-Object { $Fonts.CopyHere($_.FullName) }
