pipeline {
    agent any
    stages {
        stage('Dev') {
            steps {
                echo 'Done'
                git(url: 'https://github.com/BoondockRiley/Postgres', branch: 'SQL', poll: true, credentialsId: 'github-token2')
                script {
                    // Run bash command using specific bash executable
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "PWD"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "liquibase --version"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c "liquibase update"'
                                    }
            }
        }

        stage('Approval') {
                    steps {
                        script {
                            // Pause and wait for manual approval
                            input message: 'Do you want to proceed to the Test stage?', ok: 'Yes, proceed', parameters: [
                                string(defaultValue: '', description: 'Optional comment', name: 'Approval Comment', trim: true)
                            ]
                        }
                    }
                }

        stage('Test') {
            steps {
                echo 'Test'
                script {
                    // Run bash command using specific bash executable
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c " liquibase diff  --diff-types=tables"'
                    bat '"C:\\Program Files\\Git\\bin\\bash.exe" -c " liquibase checks run"'
                                    }
            }
        }
    }
}
