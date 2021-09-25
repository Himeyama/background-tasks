# background-tasks

- [bg.ps1](bg.ps1)  
  バックグラウンドでプロセスを起動します。

  > 例: メモ帳を開く。
  ```ps1
  ./bg.ps1 notepad
  Get-Process Notepad
  Stop-Process Notepad
  ```

- [bgssh.ps1](bgssh.ps1)  
  バックグラウンドで ssh の起動と再接続を行います。

  ```ps1
  .\bgssh.ps1 server "-L" "8080:localhost:8080"
  ```

  > タスクを設定する場合

  ```ps1
  powershell -WindowStyle Hidden ~/background-tasks/bgssh.ps1 server "-L" "8080:localhost:8080"
  ```