pipeline {
    agent any
    options {
        buildDiscarder(logRotator(daysToKeepStr: '10', numToKeepStr: '10'))
        timeout(time: 12, unit: 'HOURS')
        timestamps()
    }
    triggers {
        cron '17 35 * * *'
    }
    stages {
        stage('Calculate') {
            steps {
                sh ('''
                    chmod +x ./scripts/algorithm.sh
                    ./scripts/algorithm.sh
                    ''')
                archiveArtifacts artifacts: '*.txt', fingerprint: true, followSymlinks: false
            }
        }
    }
}