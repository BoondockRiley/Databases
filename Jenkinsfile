pipeline {
  agent any
  stages {
    stage('Dev') {
      steps {
        echo 'Done'
        git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'main', poll: true, credentialsId: 'github-token2')
      }
    }

  }
}