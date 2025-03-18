pipeline {
    agent any
    stages {
        stage('Dev') {
            steps {
                echo 'Done'
                git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'main', poll: true, credentialsId: 'github-token2')
                script {
                    // Run bash command using specific bash executable
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "./runme.sh"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "echo Hello from Bash!"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "liquibase --version"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "liquibase update --changelog-file=example-changelog.sql"'
                                    }
            }
        }

        stage('Test') {
            steps {
                echo 'Test'
                script {
                    // Run bash command using specific bash executable
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c " liquibase diff  --diff-types=tables"'
                                    }
            }
        }
    }
}
