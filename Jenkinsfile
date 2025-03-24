pipeline {
  agent any
  stages {
    stage('Dev') {
      parallel {
        stage('Dev') {
          steps {
            echo 'Start'
            git(url: 'https://github.com/BoondockRiley/Databases/tree/main/SQL', branch: 'main', changelog: true, poll: true)
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