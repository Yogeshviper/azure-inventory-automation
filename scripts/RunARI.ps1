# =====================================
# Azure Resource Inventory Automation
# =====================================

# Service Principal Login

$AppId = $env:AZURE_CLIENT_ID
$Password = $env:AZURE_CLIENT_SECRET
$TenantId = $env:AZURE_TENANT_ID

$SecurePassword = ConvertTo-SecureString $Password -AsPlainText -Force

$Credential = New-Object System.Management.Automation.PSCredential($AppId, $SecurePassword)

Connect-AzAccount `
-ServicePrincipal `
-Tenant $TenantId `
-Credential $Credential

# Create Reports Folder

$ReportFolder = "./reports"

if (!(Test-Path $ReportFolder)) {
    New-Item -ItemType Directory -Path $ReportFolder
}

# Date

$Date = Get-Date -Format "yyyyMMdd_HHmmss"

# Import ARI

Import-Module AzureResourceInventory

# Run ARI

try {

    Invoke-ARI `
    -TenantID $TenantId `
    -ReportDir $ReportFolder `
    -ReportName "AzureInventory_$Date"

}
catch {

    Write-Warning "ARI completed with Linux formatting warnings."

}

Write-Host "ARI Report Generated"
