
process 'Deploy Microservice Process', {
  description = 'System generated process for microservice deployment'
  processType = 'DEPLOY'

  processStep 'Retrieve Artifact', {
    description = 'System generated step to retrieve microservice definition artifact'
    processStepType = 'plugin'
    subprocedure = 'Source Provider'
    subproject = '/plugins/EC-Git/project'

    acl {
      // this acl's owning entity is a property sheet
      objectType = 'propertySheet'

      inheriting = '1'
    }

    acl {
      inheriting = '1'
    }
  }

  processStep 'Deploy Microservice', {
    description = 'System generated step to deploy microservice'
    processStepType = 'plugin'
    subprocedure = 'Deploy Service'
    subproject = '/plugins/EC-Helm/project'

    acl {
      // this acl's owning entity is a property sheet
      objectType = 'propertySheet'

      inheriting = '1'
    }

    acl {
      inheriting = '1'
    }
  }

  processDependency 'Retrieve Artifact', targetProcessStepName: 'Deploy Microservice'
}
