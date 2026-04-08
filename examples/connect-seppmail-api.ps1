param(
  [string]$BaseUrl = 'https://mail.example.com:8445/v1',
  [string]$Token = $env:SEPPMAIL_API_TOKEN,
  [string]$Secret = $env:SEPPMAIL_API_SECRET
)

$headers = @{
  'X-SM-API-TOKEN'  = $Token
  'X-SM-API-SECRET' = $Secret
}

Invoke-RestMethod -Uri "$BaseUrl/version" -Headers $headers -Method Get
