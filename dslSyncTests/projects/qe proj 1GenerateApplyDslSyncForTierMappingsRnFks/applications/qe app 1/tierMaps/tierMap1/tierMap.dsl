
tierMap 'tierMap1', {
  environmentName = 'qe env 1'
  environmentProjectName = 'qe proj 2GenerateApplyDslSyncForTierMappingsOrbnp'

  tierMapping 'tierMapping1', {
    applicationTierName = 'tier1'
    environmentTierName = 'tier1'
    tierMapName = 'tierMap1'
  }

  tierMapping 'tierMapping2', {
    applicationTierName = 'tier2'
    environmentTierName = 'tier2'
    tierMapName = 'tierMap1'
  }
}
