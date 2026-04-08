function Invoke-WithRetry {
  param([scriptblock]$Script,[int]$MaxAttempts=3)
  for($i=1; $i -le $MaxAttempts; $i++) {
    try { return & $Script }
    catch { if($i -eq $MaxAttempts){ throw }; Start-Sleep -Seconds $i }
  }
}
