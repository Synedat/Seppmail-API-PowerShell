# Example: get basic service information
$baseUrl = 'https://mail.example.com:8445/v1'
$headers = @{
  'X-SM-API-TOKEN'  = $env:SEPPMAIL_API_TOKEN
  'X-SM-API-SECRET' = $env:SEPPMAIL_API_SECRET
}

Invoke-RestMethod -Uri "$baseUrl/version" -Headers $headers -Method Get | Format-List
