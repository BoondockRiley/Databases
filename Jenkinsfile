pipeline {
   agent {
    docker { image 'liquibase/liquibase:4.4.2' }
  }
  stages {
    stage('Dev') {
      steps {
        echo 'Done'
        git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'main', poll: true, credentialsId: 'github-token2')
      }
    }

    stage('Test') {
      steps {
        echo 'Test'
      }
    }

  }
}