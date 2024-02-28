
process 'Deploy Application', {
  description = 'System generated process for microservice application'
  processType = 'DEPLOY'

  formalParameter 'ec_qe microservice name1-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_qe microservice name2-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_qe microservice name3-run', defaultValue: '1', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  formalParameter 'ec_rolloutApprovers', defaultValue: '', {
    expansionDeferred = '1'
    type = 'assigneeList'
  }

  formalParameter 'ec_rolloutNotificationEnabled', defaultValue: '0', {
    expansionDeferred = '1'
    type = 'checkbox'
  }

  processStep 'qe microservice name1', {
    description = 'System generated step to invoke microservice process'
    processStepType = 'process'
    submicroservice = 'qe microservice name1'
    submicroserviceProcess = 'Deploy Microservice Process'
    useUtilityResource = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'

      acl {
        inheriting = '1'
      }
    }

    acl {
      // this acl's owning entity is a property sheet
      objectType = 'propertySheet'

      inheriting = '1'
    }

    acl {
      inheriting = '1'
    }
  }

  processStep 'qe microservice name2', {
    description = 'System generated step to invoke microservice process'
    processStepType = 'process'
    submicroservice = 'qe microservice name2'
    submicroserviceProcess = 'Deploy Microservice Process'
    useUtilityResource = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'

      acl {
        inheriting = '1'
      }
    }

    acl {
      // this acl's owning entity is a property sheet
      objectType = 'propertySheet'

      inheriting = '1'
    }

    acl {
      inheriting = '1'
    }
  }

  processStep 'qe microservice name3', {
    description = 'System generated step to invoke microservice process'
    processStepType = 'process'
    submicroservice = 'qe microservice name3'
    submicroserviceProcess = 'Deploy Microservice Process'
    useUtilityResource = '1'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'

      acl {
        inheriting = '1'
      }
    }

    acl {
      // this acl's owning entity is a property sheet
      objectType = 'propertySheet'

      inheriting = '1'
    }

    acl {
      inheriting = '1'
    }
  }
}
