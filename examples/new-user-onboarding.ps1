# Example placeholder for an onboarding workflow
# Replace the endpoint and payload according to the API version and enabled feature set
$payload = @{
  email = 'new.user@example.com'
  displayName = 'New User'
} | ConvertTo-Json

Write-Host 'Prepare onboarding payload'
$payload
