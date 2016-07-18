
# VS
# choco install VisualStudio2013Ultimate -InstallArguments '/AddRemoveFeatures=''WebTools SQL''' # /ProductKey={KEY}'

# source control
choco install git -y

# create git bash shortcut
# NOT SURE THIS IS NEEDED IN LATEST VERSION OF GIT
# $WshShell = New-Object -comObject WScript.Shell
# $Shortcut = $WshShell.CreateShortcut("${Env:ProgramFiles}\Git\Git Bash.lnk")
# $Shortcut.TargetPath = "${Env:ProgramFiles}\Git\Git Bash.vbs"
# $Shortcut.IconLocation = "${Env:ProgramFiles}\Git\etc\git.ico"
# $Shortcut.Save()

choco install SourceTree -y

# utilities
choco install 7zip -y
choco install vim -y
choco install FoxitReader -y
choco install console2 -y
choco install autohotkey -y
choco install fiddler4 -y
choco install NSSM -y
choco install filezilla -y
choco install xmlnotepad -y
choco install treesizefree -y
choco install 1password -y
choco install ccleaner -y
choco install diffmerge -y
choco install dropbox -y

# browsers
choco install GoogleChrome -y
choco install firefox -y


# programming and DB
choco install mongodb -y
choco install RoboMongo -y
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


