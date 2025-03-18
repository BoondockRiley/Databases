pipeline {
  agent {
    docker {
      image 'liquibase:latest'
    }

  }
  stages {
    stage('Dev') {
      parallel {
        stage('Dev') {
          steps {
            echo 'Done'
            git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'main', poll: true, credentialsId: 'github-token2')
          }
        }

        stage('DockerImage') {
          steps {
            echo 'Docker'
          }
        }

      }
    }

  }
}