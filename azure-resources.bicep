param location string = resourceGroup().location
param name string = 'spacebaz01'
param storageName string = '${toLower(name)}${uniqueString(resourceGroup().id)}'

resource storageaccountbaz 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

