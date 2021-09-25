$start = $True
while($True){
    if($start -or $process.HasExited){
        if(-not $start){
            Write-Error "プロセスが終了しています。"
        }
        Write-Output "プロセスを起動中..."
        [System.Diagnostics.Process]$process = Start-Process `
            -FilePath ssh `
            -ArgumentList $Args `
            -WindowStyle Hidden `
            -PassThru
    }
    $start = $False
    Start-Sleep 60
}