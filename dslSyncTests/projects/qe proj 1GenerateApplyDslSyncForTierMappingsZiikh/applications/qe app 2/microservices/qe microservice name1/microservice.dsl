
microservice 'qe microservice name1', {
  definitionSource = 'git'
  definitionSourceParameter = [
    'branch': 'main',
    'config': '11',
    'repoUrl': 'https://charts.bitnami.com/bitnami',
  ]
  definitionType = 'helm'
  deployParameter = [
    'chart': 'bitnami/redmine',
    'releaseName': 'test-redmine',
  ]
}
