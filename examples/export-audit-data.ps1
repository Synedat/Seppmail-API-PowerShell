param([string]$Path='./audit-export.json')
@{ exportedAt=(Get-Date).ToString('o'); note='Fill with API response data.' } | ConvertTo-Json -Depth 5 | Out-File $Path -Encoding utf8
Write-Host "Wrote $Path"
