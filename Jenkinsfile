pipeline {
    agent { label 'Flutter_v2020_05' }
    stages {
        stage ('Flutter Doctor') {
            steps {
                sh '''
                   #!/bin/bash
                   flutter doctor -v
                   '''
                
            }
        }
        stage ('Run Flutter Tests') {
            steps {
                sh "flutter pub get"
            }
        }
    }
}