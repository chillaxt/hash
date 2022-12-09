#define the target path
$targetfile = Read-Host "Please enter the full file name with extension (with full path)"

#test if the file exist, True/False
$exist = Test-Path $targetfile

#if file exist the calc SHA256 hash and out put
if ($exist -match 'False') {
    Write-Host "The file does not exist or file path is incorrect" -ForegroundColor Red
} else {
    $calc = Get-FileHash $targetfile
    $hash = $calc.hash
    Write-Host "The file SHA256 hash is:"
    Write-Host "$hash" -ForegroundColor Green
}

