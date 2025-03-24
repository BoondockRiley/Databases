pipeline {
  agent any
  stages {
    stage('Dev') {
      parallel {
        stage('Dev') {
          steps {
            echo 'Start'
             git(url: 'https://github.com/BoondockRiley/Databases.git', branch: 'main', poll: true, credentialsId: 'github-token2')
               }
        }

        stage('') {
          steps {
            bat(script: 'bat \'"C:\\\\Program Files\\\\Git\\\\bin\\\\bash.exe" -c "liquibase --version"\'', returnStatus: true)
          }
        }

      }
    }

  }
}