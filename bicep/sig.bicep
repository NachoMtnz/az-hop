targetScope = 'resourceGroup'

param location string
param resourcePostfix string

resource sig 'Microsoft.Compute/galleries@2023-07-03' = {
  name: 'azhop_${resourcePostfix}'
  location: location
  properties: {
    description: 'Shared images for AZHOP"'
  }
}
output sig_name string = 'azhop_${resourcePostfix}'
