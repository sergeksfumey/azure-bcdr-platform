
param(
    [string]$VMName,
    [string]$ResourceGroup
)

$vault = Get-AzRecoveryServicesVault -Name "your-bcdr-vault"
Set-AzRecoveryServicesVaultContext -Vault $vault

$replicatedItem = Get-AzRecoveryServicesAsrReplicationProtectedItem -Name $VMName -ResourceGroupName $ResourceGroup

Start-AzRecoveryServicesAsrUnplannedFailoverJob -ReplicationProtectedItem $replicatedItem -Direction "PrimaryToRecovery"
