Write-Host "Installing Renzo LPRP"
Write-Host "Downloading ..."
if([IntPtr]::Size -eq 8) {
	$source = "https://github.com/ScaleXY-Clients/lprp-public/releases/latest/download/lprp_windows_x64.zip"
}
if([IntPtr]::Size -eq 4) {
	$source = "https://github.com/ScaleXY-Clients/lprp-public/releases/latest/download/lprp_windows_x86.zip"
}
$destination = '.\install.zip'
Invoke-RestMethod -Uri $source -OutFile $destination
unzip .\install.zip
.\install.bat
Write-Host "Please restart machine"