if($Args.Length -ne 1){
    Write-Error "���s�p�X���K�v�ł��B"
    exit 1
}

[System.Diagnostics.Process]$process = Start-Process `
    -FilePath notepad `
    -WindowStyle Hidden `
    -PassThru
$process.GetType()

