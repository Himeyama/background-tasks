$start = $True
while($True){
    if($start -or $process.HasExited){
        if(-not $start){
            Write-Error "�v���Z�X���I�����Ă��܂��B"
        }
        Write-Output "�v���Z�X���N����..."
        [System.Diagnostics.Process]$process = Start-Process `
            -FilePath ssh `
            -ArgumentList $Args `
            -WindowStyle Hidden `
            -PassThru
    }
    $start = $False
    Start-Sleep 60
}