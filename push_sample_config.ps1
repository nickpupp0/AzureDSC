$resourceGroup = 'Playground'
$vmName = 'vm01'
$storageName = 'playgroundstor01'

Publish-AzVMDscConfiguration -ConfigurationPath .\sample_config.ps1 -ResourceGroupName $resourceGroup -StorageAccountName $storageName -force
Set-AzVMDscExtension -Version '2.80' -ResourceGroupName $resourceGroup -VMName $vmName -ArchiveStorageAccountName $storageName -ArchiveBlobName 'sample_config.ps1.zip' -AutoUpdate -ConfigurationName 'SampleConfig'