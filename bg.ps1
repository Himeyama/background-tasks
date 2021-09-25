if($Args.Length -ne 1){
    Write-Error "実行パスが必要です。"
    exit 1
}

[System.Diagnostics.Process]$process = Start-Process `
    -FilePath $Args[0] `
    -WindowStyle Hidden `
    -PassThru
$process.GetType()

