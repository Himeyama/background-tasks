if($Args.Length -ne 1){
    Write-Error "���s�p�X���K�v�ł��B"
    exit 1
}

[System.Diagnostics.Process]$process = Start-Process `
    -FilePath $Args[0] `
    -WindowStyle Hidden `
    -PassThru
$process.GetType()

