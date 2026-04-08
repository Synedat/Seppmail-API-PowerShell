
param(
    [string]$OutputPath = "./out/invoke-readiness-check.json"
)

New-Item -ItemType Directory -Force -Path (Split-Path $OutputPath) | Out-Null

$payload = [ordered]@{
    repository = "Seppmail-API-PowerShell"
    script = "invoke-readiness-check.ps1"
    timestampUtc = [DateTime]::UtcNow.ToString('o')
    note = "Starter example maintained by Synedat Group GmbH for the SEPPmail ecosystem. Adapt endpoints, tenant identifiers and authentication before productive use."
    checks = @(
        "pre-check",
        "read-only validation",
        "evidence export"
    )
}

$payload | ConvertTo-Json -Depth 5 | Set-Content -Path $OutputPath -Encoding UTF8
Write-Host "Wrote starter output to $OutputPath"
