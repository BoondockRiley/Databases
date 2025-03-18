pipeline {
  agent any
  stages {
    stage('Dev') {
      steps {
        git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'main', credentialsId: 'github-token2', poll: true)
        echo 'Done'
      }
    }

    stage('Test') {
      steps {
        echo 'Start'
      }
    }

  }
}