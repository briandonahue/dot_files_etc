iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# VS
choco install VisualStudio2013Ultimate -InstallArguments '/AddRemoveFeatures=''WebTools SQL''' # /ProductKey={KEY}'

# source control
choco install git

# create git bash shortcut
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("${Env:ProgramFiles(x86)}\Git\Git Bash.lnk")
$Shortcut.TargetPath = "${Env:ProgramFiles(x86)}\Git\Git Bash.vbs"
$Shortcut.IconLocation = "${Env:ProgramFiles(x86)}\Git\etc\git.ico"
$Shortcut.Save()

choco install SourceTree

# utilities
choco install 7zip
choco install vim
choco install FoxitReader
choco install console2
choco install autohotkey
choco install fiddler4
choco install resharper -version 7.1.3000.2254
choco install NSSM
choco install filezilla
choco install xmlnotepad
choco install treesizefree
choco install lastpass
choco install ccleaner
choco install diffmerge
choco install dropbox
choco install microsoftsecurityessentials

# browsers
choco install GoogleChrome
choco install firefox


# programming and DB
choco install mongodb
choco install RoboMongo
choco install eventstore
# choco install ruby
# choco install ruby2.devkit
# choco install nodejs.install


# rescuetime
# redgate tools
# altova xml 
# http://chocolatey.org/packages/alanstevens.vsextensions
# sysinternals

# OTHER SETUP
# dotfiles (bash/vim)
# R# settings
# Console2 setup
# AHK scripts
# Need to run ruby-devkit install on correct ruby path (update config.yml)
# 

# Set folder options
$key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $key Hidden 1
Set-ItemProperty $key HideFileExt 0
Set-ItemProperty $key ShowSuperHidden 1
Stop-Process -processname explorer


