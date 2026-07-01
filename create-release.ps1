$zipPath = Join-Path $PSScriptRoot 'witherdblade-v1.0.0-release.zip'
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
$paths = @(
    Join-Path $PSScriptRoot 'dist\*',
    Join-Path $PSScriptRoot 'RELEASE.md',
    Join-Path $PSScriptRoot '.gitignore',
    Join-Path $PSScriptRoot '.github\workflows\release.yml'
)
Compress-Archive -Path $paths -DestinationPath $zipPath -Force
Write-Host "ZIP_CREATED: $zipPath"
